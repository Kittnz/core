#define _CRT_SECURE_NO_DEPRECATE

#include <filesystem>
#include <iostream>
#include <vector>
#include <fstream>
#include <cstdio>
#include <sstream>
#include "lodepng.h"
#include "tga.h"
#include "Windows.h"

using namespace std;
#define fs std::filesystem

int main() 
{
    fs::path _path = fs::current_path() / "Screenshots";

    for (const fs::directory_entry& dir_entry : fs::recursive_directory_iterator(_path))
    {
        if (dir_entry.is_directory())
            continue;

        if (dir_entry.path().extension() == ".tga")
        {
            std::stringstream ss;
            ss << "Screenshots/" << dir_entry.path().filename().string();
            std::string s = ss.str();

            FILE* f = std::fopen(s.c_str(), "rb"); 
 //         int err = GetLastError();
            tga::StdioFileInterface file(f);
            tga::Decoder decoder(&file);
            tga::Header header;
            if (!decoder.readHeader(header))
                return 0;

            tga::Image image;
            image.bytesPerPixel = header.bytesPerPixel();
            image.rowstride = header.width * header.bytesPerPixel();

            std::vector<uint8_t> buffer(image.rowstride * header.height);
            image.pixels = &buffer[0];

            if (!decoder.readImage(header, image, nullptr))
                return 3;

            decoder.postProcessImage(header, image);

            std::stringstream ss_ren;
            ss_ren << dir_entry.path().stem().string() << ".png";
            std::string s_ren = ss_ren.str();

            unsigned saveError = lodepng::encode(s_ren.c_str(), image.pixels, header.width, header.height, LodePNGColorType::LCT_RGBA);
        }
    }
	return 0;
}