/*
 * This file is part of the CMaNGOS Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "TileAssembler.h"
#include "MapTree.h"
#include "BIH.h"
#include "VMapDefinitions.h"

#include <set>
#include <iomanip>
#include <sstream>

using G3D::Vector3;
using G3D::AABox;
using G3D::inf;
using std::pair;

template<> struct BoundsTrait<VMAP::ModelSpawn*>
{
    static void getBounds(VMAP::ModelSpawn const* const& obj, G3D::AABox& out)
    {
        out = obj->getBounds();
    }
};

namespace VMAP
{
bool readChunk(FILE* rf, char* dest, char const* compare, uint32 len)
{
    if (fread(dest, sizeof(char), len, rf) != len) return false;
    return memcmp(dest, compare, len) == 0;
}

Vector3 ModelPosition::transform(Vector3 const& pIn) const
{
    Vector3 out = pIn * iScale;
    out = iRotation * out;
    return out;
}

//=================================================================

TileAssembler::TileAssembler(std::string const& pSrcDirName, std::string const& pDestDirName) : iDestDir(pDestDirName), iSrcDir(pSrcDirName)
{
    iCurrentUniqueNameId = 0;
    iFilterMethod = nullptr;
}

TileAssembler::~TileAssembler()
{
    // delete iCoordModelMapping;
}

bool TileAssembler::convertWorld2()
{
    bool success = readMapSpawns();
    if (!success)
        return false;

    // export Map data
    for (MapData::iterator map_iter = mapData.begin(); map_iter != mapData.end() && success; ++map_iter)
    {
        // build global map tree
        std::vector<ModelSpawn*> mapSpawns;
        UniqueEntryMap::iterator entry;
        printf("Calculating model bounds for map %u...\n", map_iter->first);
        for (entry = map_iter->second->UniqueEntries.begin(); entry != map_iter->second->UniqueEntries.end(); ++entry)
        {
            // M2 models don't have a bound set in WDT/ADT placement data, i still think they're not used for LoS at all on retail
            if (entry->second.flags & MOD_M2)
            {
                if (!calculateTransformedBound(entry->second))
                    break;
            }
            else if (entry->second.flags & MOD_WORLDSPAWN) // WMO maps and terrain maps use different origin, so we need to adapt :/
            {
                // TODO: remove extractor hack and uncomment below line:
                // entry->second.iPos += Vector3(533.33333f*32, 533.33333f*32, 0.f);
                entry->second.iBound = entry->second.iBound + Vector3(533.33333f * 32, 533.33333f * 32, 0.f);
            }
            mapSpawns.push_back(&(entry->second));
            spawnedModelFiles.insert(entry->second.name);
        }

        printf("Creating map tree...\n");
        BIH pTree;
        pTree.build(mapSpawns, BoundsTrait<ModelSpawn*>::getBounds);

        // ===> possibly move this code to StaticMapTree class
        std::map<uint32, uint32> modelNodeIdx;
        for (uint32 i = 0; i < mapSpawns.size(); ++i)
            modelNodeIdx.insert(pair<uint32, uint32>(mapSpawns[i]->ID, i));

        // write map tree file
        std::stringstream mapfilename;
        mapfilename << iDestDir << "/" << std::setfill('0') << std::setw(3) << map_iter->first << ".vmtree";
        FILE* mapfile = fopen(mapfilename.str().c_str(), "wb");
        if (!mapfile)
        {
            success = false;
            printf("Cannot open %s\n", mapfilename.str().c_str());
            break;
        }

        // general info
        if (success && fwrite(VMAP_MAGIC, 1, 8, mapfile) != 8) success = false;
        uint32 globalTileID = StaticMapTree::packTileID(65, 65);
        pair<TileMap::iterator, TileMap::iterator> globalRange = map_iter->second->TileEntries.equal_range(globalTileID);
        char isTiled = globalRange.first == globalRange.second; // only maps without terrain (tiles) have global WMO
        if (success && fwrite(&isTiled, sizeof(char), 1, mapfile) != 1) success = false;
        // Nodes
        if (success && fwrite("NODE", 4, 1, mapfile) != 1) success = false;
        if (success) success = pTree.writeToFile(mapfile);
        // global map spawns (WDT), if any (most instances)
        if (success && fwrite("GOBJ", 4, 1, mapfile) != 1) success = false;

        for (TileMap::iterator glob = globalRange.first; glob != globalRange.second && success; ++glob)
            success = ModelSpawn::writeToFile(mapfile, map_iter->second->UniqueEntries[glob->second]);

        fclose(mapfile);

        // <====

        // write map tile files, similar to ADT files, only with extra BSP tree node info
        TileMap& tileEntries = map_iter->second->TileEntries;
        TileMap::iterator tile;
        for (tile = tileEntries.begin(); tile != tileEntries.end(); ++tile)
        {
            ModelSpawn const& spawn = map_iter->second->UniqueEntries[tile->second];
            if (spawn.flags & MOD_WORLDSPAWN)           // WDT spawn, saved as tile 65/65 currently...
                continue;
            uint32 nSpawns = tileEntries.count(tile->first);
            std::stringstream tilefilename;
            tilefilename.fill('0');
            tilefilename << iDestDir << "/" << std::setw(3) << map_iter->first << "_";
            uint32 x, y;
            StaticMapTree::unpackTileID(tile->first, x, y);
            tilefilename << std::setw(2) << x << "_" << std::setw(2) << y << ".vmtile";
            FILE* tilefile = fopen(tilefilename.str().c_str(), "wb");
            // file header
            if (success && fwrite(VMAP_MAGIC, 1, 8, tilefile) != 8) success = false;
            // write number of tile spawns
            if (success && fwrite(&nSpawns, sizeof(uint32), 1, tilefile) != 1) success = false;
            // write tile spawns
            for (uint32 s = 0; s < nSpawns; ++s)
            {
                if (s)
                    ++tile;
                if (tile == tileEntries.end())
                    break;
                ModelSpawn const& spawn2 = map_iter->second->UniqueEntries[tile->second];
                success = success && ModelSpawn::writeToFile(tilefile, spawn2);
                // MapTree nodes to update when loading tile:
                std::map<uint32, uint32>::iterator nIdx = modelNodeIdx.find(spawn2.ID);
                if (success && fwrite(&nIdx->second, sizeof(uint32), 1, tilefile) != 1) success = false;
            }
            fclose(tilefile);
        }
        // break; // test, extract only first map; TODO: remvoe this line
    }

    // add an object models, listed in temp_gameobject_models file
    exportGameobjectModels();

    // export objects
    std::cout << "\nConverting Model Files" << std::endl;
    for (const auto& spawnedModelFile : spawnedModelFiles)
    {
        std::cout << "Converting " << spawnedModelFile << std::endl;
        if (!convertRawFile(spawnedModelFile))
        {
            std::cout << "error converting " << spawnedModelFile << std::endl;
            success = false;
            break;
        }
    }

    // cleanup:
    for (auto& map_iter : mapData)
        delete map_iter.second;
    return success;
}

bool TileAssembler::readMapSpawns()
{
    std::string fname = iSrcDir + "/dir_bin";
    FILE* dirf = fopen(fname.c_str(), "rb");
    if (!dirf)
    {
        printf("Could not read dir_bin file!\n");
        return false;
    }
    printf("Read coordinate mapping...\n");
    uint32 mapID = 0, tileX = 0, tileY = 0;
    ModelSpawn spawn;
    while (!feof(dirf))
    {
        // read mapID, tileX, tileY, Flags, adtID, ID, Pos, Rot, Scale, Bound_lo, Bound_hi, name
        uint32 check = fread(&mapID, sizeof(uint32), 1, dirf);
        if (check == 0) // EoF...
            break;
        check += fread(&tileX, sizeof(uint32), 1, dirf);
        check += fread(&tileY, sizeof(uint32), 1, dirf);
        if (!ModelSpawn::readFromFile(dirf, spawn))
            break;

        MapSpawns* current;
        MapData::iterator map_iter = mapData.find(mapID);
        if (map_iter == mapData.end())
        {
            printf("spawning Map %u\n", mapID);
            mapData[mapID] = current = new MapSpawns();
        }
        else current = (*map_iter).second;
        current->UniqueEntries.insert(pair<uint32, ModelSpawn>(spawn.ID, spawn));
        current->TileEntries.insert(pair<uint32, uint32>(StaticMapTree::packTileID(tileX, tileY), spawn.ID));
    }
    bool success = (ferror(dirf) == 0);
    fclose(dirf);
    return success;
}

bool TileAssembler::calculateTransformedBound(ModelSpawn& spawn)
{
    std::string modelFilename = iSrcDir + "/" + spawn.name;
    ModelPosition modelPosition;
    modelPosition.iDir = spawn.iRot;
    modelPosition.iScale = spawn.iScale;
    modelPosition.init();

    WorldModel_Raw raw_model;
    if (!raw_model.Read(modelFilename.c_str()))
        return false;

    uint32 groups = raw_model.groupsArray.size();
    if (groups != 1)
        printf("Warning: '%s' does not seem to be a M2 model!\n", modelFilename.c_str());

    AABox modelBound;
    bool boundEmpty = true;
    for (uint32 g = 0; g < groups; ++g) // should be only one for M2 files...
    {
        std::vector<Vector3>& vertices = raw_model.groupsArray[g].vertexArray;

        if (vertices.empty())
        {
            std::cout << "error: model '" << spawn.name << "' has no geometry!" << std::endl;
            continue;
        }

        uint32 nvectors = vertices.size();
        for (uint32 i = 0; i < nvectors; ++i)
        {
            Vector3 v = modelPosition.transform(vertices[i]);
            if (boundEmpty)
                modelBound = AABox(v, v), boundEmpty = false;
            else
                modelBound.merge(v);
        }
    }
    spawn.iBound = modelBound + spawn.iPos;
    spawn.flags |= MOD_HAS_BOUND;
    return true;
}

struct WMOLiquidHeader
{
    int xverts, yverts, xtiles, ytiles;
    float pos_x;
    float pos_y;
    float pos_z;
    short type;
};
//=================================================================
bool TileAssembler::convertRawFile(std::string const& pModelFilename)
{
    std::string filename = iSrcDir;
    if (filename.length() > 0)
        filename.append("/");
    filename.append(pModelFilename);

    WorldModel_Raw raw_model;
    if (!raw_model.Read(filename.c_str()))
        return false;

    // write WorldModel
    WorldModel model;
    model.setRootWmoID(raw_model.RootWMOID);
    if (!raw_model.groupsArray.empty())
    {
        std::vector<GroupModel> groupsArray;

        uint32 groups = raw_model.groupsArray.size();
        for (uint32 g = 0; g < groups; ++g)
        {
            GroupModel_Raw& raw_group = raw_model.groupsArray[g];
            groupsArray.push_back(GroupModel(raw_group.mogpflags, raw_group.GroupWMOID, raw_group.bounds));
            groupsArray.back().setMeshData(raw_group.vertexArray, raw_group.triangles);
            groupsArray.back().setLiquidData(raw_group.liquid);
        }

        model.setGroupModels(groupsArray);
    }

    //std::cout << "readRawFile2: '" << pModelFilename << "' tris: " << nElements << " nodes: " << nNodes << std::endl;
    return model.writeFile(iDestDir + "/" + pModelFilename + ".vmo");
}

void TileAssembler::exportGameobjectModels()
{
    FILE* model_list = fopen((iSrcDir + "/" + GAMEOBJECT_MODELS).c_str(), "rb");
    if (!model_list)
        return;

    FILE* model_list_copy = fopen((iDestDir + "/" + GAMEOBJECT_MODELS).c_str(), "wb");
    if (!model_list_copy)
    {
        fclose(model_list);
        return;
    }

    uint32 name_length, displayId;
    char buff[500];
    while (!feof(model_list))
    {
        fread(&displayId, sizeof(uint32), 1, model_list);
        fread(&name_length, sizeof(uint32), 1, model_list);

        if (name_length >= sizeof(buff))
        {
            std::cout << "\nFile '" << GAMEOBJECT_MODELS << "' seems to be corrupted" << std::endl;
            break;
        }

        fread(&buff, sizeof(char), name_length, model_list);
        std::string model_name(buff, name_length);

        WorldModel_Raw raw_model;
        if (!raw_model.Read((iSrcDir + "/" + model_name).c_str()))
            continue;

        spawnedModelFiles.insert(model_name);

        AABox bounds;
        bool boundEmpty = true;
        for (auto& g : raw_model.groupsArray)
        {
            std::vector<Vector3>& vertices = g.vertexArray;

            uint32 nvectors = vertices.size();
            for (uint32 i = 0; i < nvectors; ++i)
            {
                Vector3& v = vertices[i];
                if (boundEmpty)
                    bounds = AABox(v, v), boundEmpty = false;
                else
                    bounds.merge(v);
            }
        }

        fwrite(&displayId, sizeof(uint32), 1, model_list_copy);
        fwrite(&name_length, sizeof(uint32), 1, model_list_copy);
        fwrite(&buff, sizeof(char), name_length, model_list_copy);
        fwrite(&bounds.low(), sizeof(Vector3), 1, model_list_copy);
        fwrite(&bounds.high(), sizeof(Vector3), 1, model_list_copy);
    }
    fclose(model_list);
    fclose(model_list_copy);
}

// temporary use defines to simplify read/check code (close file and return at fail)
#define READ_OR_RETURN(V,S) if(fread((V), (S), 1, rf) != 1) { \
                                    fclose(rf); printf("readfail, op = %i\n", readOperation); return(false); }
#define CMP_OR_RETURN(V,S)  if(strcmp((V),(S)) != 0)        { \
                                    fclose(rf); printf("cmpfail, %s!=%s\n", V, S);return(false); }

bool GroupModel_Raw::Read(FILE* rf)
{
    char blockId[5];
    blockId[4] = 0;
    int blocksize;
    int readOperation = 0;

    READ_OR_RETURN(&mogpflags, sizeof(uint32));
    READ_OR_RETURN(&GroupWMOID, sizeof(uint32));

    Vector3 vec1, vec2;
    READ_OR_RETURN(&vec1, sizeof(Vector3));
    READ_OR_RETURN(&vec2, sizeof(Vector3));
    bounds.set(vec1, vec2);

    READ_OR_RETURN(&liquidflags, sizeof(uint32));

    // will this ever be used? what is it good for anyway??
    uint32 branches;
    READ_OR_RETURN(&blockId, 4);
    CMP_OR_RETURN(blockId, "GRP ");
    READ_OR_RETURN(&blocksize, sizeof(int));
    READ_OR_RETURN(&branches, sizeof(uint32));
    for (uint32 b = 0; b < branches; ++b)
    {
        uint32 indexes;
        // indexes for each branch (not used jet)
        READ_OR_RETURN(&indexes, sizeof(uint32));
    }

    // ---- indexes
    READ_OR_RETURN(&blockId, 4);
    CMP_OR_RETURN(blockId, "INDX");
    READ_OR_RETURN(&blocksize, sizeof(int));
    uint32 nindexes;
    READ_OR_RETURN(&nindexes, sizeof(uint32));
    if (nindexes > 0)
    {
        uint16* indexarray = new uint16[nindexes];
        if (fread(indexarray, nindexes * sizeof(uint16), 1, rf) != 1)
        {
            fclose(rf);
            delete[] indexarray;
            printf("readfail, op = %i\n", readOperation);
            return false;
        }
        triangles.reserve(nindexes / 3);
        for (uint32 i = 0; i < nindexes; i += 3)
            triangles.push_back(MeshTriangle(indexarray[i], indexarray[i + 1], indexarray[i + 2]));
        delete[] indexarray;
    }

    // ---- vectors
    READ_OR_RETURN(&blockId, 4);
    CMP_OR_RETURN(blockId, "VERT");
    READ_OR_RETURN(&blocksize, sizeof(int));
    uint32 nvectors;
    READ_OR_RETURN(&nvectors, sizeof(uint32));

    if (nvectors > 0)
    {
        float* vectorarray = new float[nvectors * 3];
        if (fread(vectorarray, nvectors * sizeof(float) * 3, 1, rf) != 1)
        {
            fclose(rf);
            delete[] vectorarray;
            printf("readfail, op = %i\n", readOperation);
            return false;
        }

        for (uint32 i = 0; i < nvectors; ++i)
            vertexArray.push_back(Vector3(vectorarray + 3 * i));
        delete[] vectorarray;
    }

    // ----- liquid
    liquid = nullptr;
    if (liquidflags & 1)
    {
        WMOLiquidHeader hlq;
        READ_OR_RETURN(&blockId, 4);
        CMP_OR_RETURN(blockId, "LIQU");
        READ_OR_RETURN(&blocksize, sizeof(int));
        READ_OR_RETURN(&hlq, sizeof(WMOLiquidHeader));
        liquid = new WmoLiquid(hlq.xtiles, hlq.ytiles, Vector3(hlq.pos_x, hlq.pos_y, hlq.pos_z), hlq.type);
        uint32 size = hlq.xverts * hlq.yverts;
        READ_OR_RETURN(liquid->GetHeightStorage(), size * sizeof(float));
        size = hlq.xtiles * hlq.ytiles;
        READ_OR_RETURN(liquid->GetFlagsStorage(), size);
    }
    return true;
}

GroupModel_Raw::~GroupModel_Raw()
{
    delete liquid;
}

bool WorldModel_Raw::Read(char const* path)
{
    FILE* rf = fopen(path, "rb");
    if (!rf)
    {
        printf("ERROR: Can't open raw model file: %s\n", path);
        return false;
    }

    char ident[8];
    int readOperation = 0;

    READ_OR_RETURN(&ident, 8);
    CMP_OR_RETURN(ident, RAW_VMAP_MAGIC);

    // we have to read one int. This is needed during the export and we have to skip it here
    uint32 tempNVectors;
    READ_OR_RETURN(&tempNVectors, sizeof(tempNVectors));

    uint32 groups;
    READ_OR_RETURN(&groups, sizeof(uint32));
    READ_OR_RETURN(&RootWMOID, sizeof(uint32));

    groupsArray.resize(groups);
    bool succeed = true;
    for (uint32 g = 0; g < groups && succeed; ++g)
        succeed = groupsArray[g].Read(rf);

    fclose(rf);
    return succeed;
}
// drop of temporary use defines
#undef READ_OR_RETURN
#undef CMP_OR_RETURN
}
