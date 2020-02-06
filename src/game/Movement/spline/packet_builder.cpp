/*
 * Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
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

#include "packet_builder.h"
#include "MoveSpline.h"
#include "WorldPacket.h"
#include "World.h"

namespace Movement
{
inline void operator << (ByteBuffer& b, Vector3 const& v)
{
    b << v.x << v.y << v.z;
}

inline void operator >> (ByteBuffer& b, Vector3& v)
{
    b >> v.x >> v.y >> v.z;
}

enum MonsterMoveType
{
    MonsterMoveNormal       = 0,
    MonsterMoveStop         = 1,
    MonsterMoveFacingSpot   = 2,
    MonsterMoveFacingTarget = 3,
    MonsterMoveFacingAngle  = 4
};

void PacketBuilder::WriteCommonMonsterMovePart(MoveSpline const& move_spline, WorldPacket& data)
{
    MoveSplineFlag splineflags = move_spline.splineflags;

    data << move_spline.spline.getPoint(move_spline.spline.first());
    data << move_spline.GetId();

    switch (splineflags & MoveSplineFlag::Mask_Final_Facing)
    {
        case MoveSplineFlag::Final_Target:
            data << uint8(MonsterMoveFacingTarget);
            data << move_spline.facing.target;
            break;
        case MoveSplineFlag::Final_Angle:
            data << uint8(MonsterMoveFacingAngle);
            data << move_spline.facing.angle;
            break;
        case MoveSplineFlag::Final_Point:
            data << uint8(MonsterMoveFacingSpot);
            data << move_spline.facing.f.x << move_spline.facing.f.y << move_spline.facing.f.z;
            break;
        default:
            data << uint8(MonsterMoveNormal);
            break;
    }

    // add fake Enter_Cycle flag - needed for client-side cyclic movement (client will erase first spline vertex after first cycle done)
    splineflags.enter_cycle = move_spline.isCyclic();
    // add fake Runmode flag - client has strange issues without that flag
    data << uint32(splineflags & ~MoveSplineFlag::Mask_No_Monster_Move | MoveSplineFlag::Runmode);
    data << move_spline.Duration();
}

int32 WriteLinearPath(Spline<int32> const& spline, ByteBuffer& data, uint32 start)
{
    uint32 maxPointsPerPacket = sWorld.getConfig(CONFIG_UINT32_MAX_POINTS_PER_MVT_PACKET);
    uint32 last_idx = spline.getPointCount() - 3;
    int32 lastIdxWritten = -1;
    if ((last_idx - start) > maxPointsPerPacket)
    {
        last_idx = start + maxPointsPerPacket;
        lastIdxWritten = last_idx;
    }
    Vector3 const* real_path = &spline.getPoint(1);
    Vector3 destination = real_path[last_idx];

    data << (last_idx - start + 1);
    data << destination;
    if (last_idx > 1)
    {
        Vector3 offset;
        // first and last points already appended
        for (uint32 i = start; i < last_idx; ++i)
        {
            offset = destination - real_path[i];
            // [-ZERO] The client freezes when it gets a zero offset.
            if (fabs(offset.x) < 0.25 && fabs(offset.y) < 0.25 && fabs(offset.z) < 0.25)
            {
                if (offset.z < 0)
                    offset.z += 0.51f;
                else
                    offset.z += 0.26f;
            }
            data.appendPackXYZ(offset.x, offset.y, offset.z);
        }
    }
    return lastIdxWritten;
}

void WriteCatmullRomPath(Spline<int32> const& spline, ByteBuffer& data)
{
    uint32 count = spline.getPointCount() - 3;
    data << count;
    data.append<Vector3>(&spline.getPoint(2), count);
}

void WriteCatmullRomCyclicPath(Spline<int32> const& spline, ByteBuffer& data)
{
    uint32 count = spline.getPointCount() - 3;
    data << uint32(count + 1);
    data << spline.getPoint(1); // fake point, client will erase it from the spline after first cycle done
    data.append<Vector3>(&spline.getPoint(1), count);
}

int PacketBuilder::WriteMonsterMove(MoveSpline const& move_spline, WorldPacket& data, int firstPoint)
{
    WriteCommonMonsterMovePart(move_spline, data);
    size_t durationPos = data.wpos() - 4;

    Spline<int32> const& spline = move_spline.spline;
    MoveSplineFlag splineflags = move_spline.splineflags;
    if (splineflags & MoveSplineFlag::Mask_CatmullRom)
    {
        if (splineflags.cyclic)
            WriteCatmullRomCyclicPath(spline, data);
        else
            WriteCatmullRomPath(spline, data);
        return -1;
    }
    else
    {
        int32 lastNode = WriteLinearPath(spline, data, firstPoint);
        uint32 duration = move_spline.Duration(0, lastNode >= 0 ? lastNode : move_spline.CountSplinePoints());
        data.put<uint32>(durationPos, duration - move_spline.time_passed);
        return lastNode;
    }
}

void PacketBuilder::WriteCreate(MoveSpline const& move_spline, ByteBuffer& data)
{
    // WriteClientStatus(mov,data);
    // data.append<float>(&mov.m_float_values[SpeedWalk], SpeedMaxCount);
    if (move_spline.Initialized())
    {
        MoveSplineFlag splineFlags = move_spline.splineflags;

        data << splineFlags.raw();

        if (splineFlags.final_angle)
            data << move_spline.facing.angle;
        else if (splineFlags.final_target)
            data << move_spline.facing.target;
        else if (splineFlags.final_point)
            data << move_spline.facing.f.x << move_spline.facing.f.y << move_spline.facing.f.z;

        data << move_spline.timePassed();
        data << move_spline.Duration();
#if SUPPORTED_CLIENT_BUILD > CLIENT_BUILD_1_7_1
        data << move_spline.GetId();
#endif

        uint32 nodes = move_spline.getPath().size();
        data << nodes;
        data.append<Vector3>(&move_spline.getPath()[0], nodes);
        data << (move_spline.isCyclic() ? Vector3::zero() : move_spline.FinalDestination());
    }


}
}
