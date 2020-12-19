// Giperion April 2020
// [EUREKA] 4.2
// Turtle Server Project

#include <windows.h>
#include <filesystem>
#include <assert.h>
#include "StormLib.h"
#include "resource.h"
#include <Commctrl.h>

#define fs std::filesystem

//#TODO: Read from config blob at the end of the file
#define NEW_BUILD 5930u
#define NEW_VISUAL_BUILD "5930"
#define NEW_VISUAL_VERSION "1.14.3"
#define NEW_BUILD_DATE "Dec 19 2020"

#define PATCH_FILE "Data\\patch-T.mpq"

// 2 bytes. Original value: unsigned short "5875"
#define OFFSET_NET_VERSION 0x001B2122

// string. Original value: "1.12.1"
#define OFFSET_VISUAL_VERSION 0x00437C04

// string. Original value: "5875"
#define OFFSET_VISUAL_BUILD 0x00437BFC

// string. Original value: "Sep 19 2006"
#define OFFSET_VISUAL_BUILD_DATE 0x00434798

#include <iostream>

void PatchNetVersion(FILE* hWoW, unsigned short Build)
{
	fseek(hWoW, (long)OFFSET_NET_VERSION, SEEK_SET);
	fwrite(&Build, 2, 1, hWoW);
}

void PatchVisualVersion(
	FILE* hWoW, 
	const std::string& VersionString, 
	const std::string& BuildString, 
	const std::string& DateString)
{
	// We can't exceed client restriction
	assert(VersionString.size() <= 6);
	assert(BuildString.size() == 4);
	assert(DateString.size() == 11);

	fseek(hWoW, OFFSET_VISUAL_VERSION, SEEK_SET);
	fwrite(VersionString.c_str(), 1, VersionString.size(), hWoW);

	fseek(hWoW, OFFSET_VISUAL_BUILD, SEEK_SET);
	fwrite(BuildString.c_str(), 1, BuildString.size(), hWoW);

	fseek(hWoW, OFFSET_VISUAL_BUILD_DATE, SEEK_SET);
	fwrite(DateString.c_str(), 1, DateString.size(), hWoW);
}

void PatchUIUnlock(FILE* hWoW)
{
	fseek(hWoW, 0x2f113a, SEEK_SET);
	char FirstPatch[] = { 0xeb, 0x19 };
	fwrite(FirstPatch, sizeof(FirstPatch), 1, hWoW);

	char SecondPatch[] = { 0x03 };
	fseek(hWoW, 0x2f1158, SEEK_SET);
	fwrite(SecondPatch, sizeof(SecondPatch), 1, hWoW);

	char ThirdPatch[] = { 0x03 };
	fseek(hWoW, 0x2f11a7, SEEK_SET);
	fwrite(ThirdPatch, sizeof(ThirdPatch), 1, hWoW);

	char FourthPatch[] = { 0xeb, 0xb2 };
	fseek(hWoW, 0x2f11f0, SEEK_SET);
	fwrite(FourthPatch, sizeof(FourthPatch), 1, hWoW);
}

constexpr int max_path = 260;
using string_path = char[2 * max_path];

struct StormFile
{
	HANDLE hFile = NULL;
	LARGE_INTEGER Size;

	StormFile(HANDLE InFile)
		: hFile(InFile)
	{
		assert(hFile != NULL);

		Size.LowPart = SFileGetFileSize(hFile, (LPDWORD)&Size.HighPart);
	}

	void ReadToBuffer(void* pOutData, DWORD NumBytes)
	{
		DWORD ReadedBytes = 0;
		bool bSuccess = SFileReadFile(hFile, pOutData, NumBytes, &ReadedBytes, NULL);
		assert(bSuccess);
		assert(ReadedBytes == NumBytes);
	}

	~StormFile()
	{
		SFileCloseFile(hFile);
	}
};

struct StormArchive
{
	HANDLE mpq = NULL;
	StormArchive(const char* pPath)
	{
		if (!SFileOpenArchive(pPath, 0, 0, &mpq))
		{
			mpq = NULL;
		}
	}

	bool IsValid() const
	{
		return mpq != NULL;
	}

	StormFile* OpenFile(const char* filename)
	{
		if (!IsValid())
		{
			return nullptr;
		}

		HANDLE hFile;
		if (SFileOpenFileEx(mpq, filename, 0, &hFile))
		{
			return new StormFile(hFile);
		}

		return nullptr;
	}

	bool HasFile(const char* filename)
	{
		if (!IsValid())
		{
			return false;
		}

		return SFileHasFile(mpq, filename);
	}

	~StormArchive()
	{
		if (mpq != NULL)
		{
			SFileCloseArchive(mpq);
		}
	}
};

HINSTANCE gHInstance;
HWND hDialog = NULL;

#define WM_SETPROGRESS WM_USER + 1

INT_PTR CALLBACK Dlgproc(HWND Arg1, UINT Message, WPARAM wParam, LPARAM lParam)
{
	static HWND hProgressBar = NULL;

	switch (Message)
	{
	case WM_INITDIALOG:
	{
		HICON hIcon = (HICON)LoadImage(gHInstance, MAKEINTRESOURCE(IDI_ICON3), IMAGE_ICON, GetSystemMetrics(SM_CXSMICON), GetSystemMetrics(SM_CYSMICON), 0);

		if (hIcon != NULL)
		{
			SendMessage(Arg1, WM_SETICON, ICON_SMALL, (LPARAM)hIcon);
		}

		hProgressBar = GetDlgItem(Arg1, IDC_PROGRESS1);

		SendMessage(hProgressBar, PBM_SETRANGE32, 0, 100);
		SendMessage(hProgressBar, PBM_SETSTEP, 1, 0);

		return TRUE;
	}

	case WM_COMMAND:
	{
		switch (LOWORD(wParam))
		{
		case IDC_CANCELBTN:
		{
			DestroyWindow(Arg1);
			hDialog = NULL;
			return TRUE;
		}
		default:
			break;
		}
	}

	case WM_SETPROGRESS:
	{
		SendMessage(hProgressBar, PBM_STEPIT, 0, 0);
	}

	default:
		break;
	}
	return FALSE;
}

inline void ErrorBox(const char* errorTxt)
{
	MessageBox(NULL, errorTxt, "Error", MB_OK | MB_ICONERROR);
}

int WINAPI WinMain (HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	gHInstance = hInstance;

	fs::path currentPath = fs::current_path();
	fs::path PatchDir = currentPath / "wow-patch.mpq";

	// create a dialog
	hDialog = CreateDialog(hInstance, MAKEINTRESOURCE(IDD_DIALOGBAR), NULL, Dlgproc);
	ShowWindow(hDialog, SW_SHOW);
	//DialogBox(hInstance, MAKEINTRESOURCE(IDD_DIALOGBAR), NULL, Dlgproc);

	// unpack mpq
	{
		std::string strPathDir = PatchDir.u8string();
		StormArchive PatchFile(strPathDir.c_str());

		if (StormFile* pFile = PatchFile.OpenFile(PATCH_FILE))
		{
			std::unique_ptr<StormFile> patchData(pFile);

			if (fs::exists(PATCH_FILE))
			{
				fs::remove(PATCH_FILE);
			}

			// copy shit to target path
			FILE* hTargetFile = fopen(PATCH_FILE, "wb");
			assert(hTargetFile != NULL);

			// split to chunks
			const DWORD chunkSize = 4096;
			DWORD chunks = patchData->Size.QuadPart / chunkSize;
			chunks += (patchData->Size.QuadPart % chunkSize) != 0;
			char ReadingBuffer[4096];

			MSG		msg;
			PeekMessage(&msg, nullptr, 0U, 0U, PM_NOREMOVE);

			DWORD ExtractProgress = 0;

			for (DWORD i = 0; i < chunks; i++)
			{
				if (hDialog == NULL) 
				{
					break;
				}

				DWORD ReadingQuota = std::min<DWORD>(patchData->Size.QuadPart - ((i + 1) * chunkSize), chunkSize);

				patchData->ReadToBuffer(&ReadingBuffer[0], ReadingQuota);

				fwrite(ReadingBuffer, ReadingQuota, 1, hTargetFile);

				// update progress
				float progress = float(i) / float(chunks);
				progress *= 100.0f;

				DWORD NewExtractProgress = DWORD(progress);

				for (; ExtractProgress < NewExtractProgress; ExtractProgress++)
				{
					SendMessage(hDialog, WM_SETPROGRESS, 0, 0);
				}

				while (PeekMessage(&msg, nullptr, 0U, 0U, PM_REMOVE))
				{
					if (!IsWindow(hDialog) || !IsDialogMessage(hDialog, &msg))
					{
						TranslateMessage(&msg);
						DispatchMessage(&msg);
					}
				}
			}

			fclose(hTargetFile);
		}
		else
		{
			ErrorBox("Failed to open patch-T.mpq inside patch mpq");
			return 1;
		}
	}

	if (hDialog == NULL)
	{
		if (fs::exists(PATCH_FILE))
		{
			fs::remove(PATCH_FILE);
		}

		return 0;
	}
	else
	{
		DestroyWindow(hDialog);
		hDialog = NULL;
	}

	if (!fs::exists("WoW_Old.exe"))
	{
		fs::copy_file("WoW.exe", "WoW_Old.exe");
	}

	// patch WoW.exe
	if (FILE* hWoWBinary = fopen("WoW.exe", "r+b"))
	{
		PatchUIUnlock(hWoWBinary);
		PatchNetVersion(hWoWBinary, NEW_BUILD);

		std::string Version(NEW_VISUAL_VERSION);
		std::string Build(NEW_VISUAL_BUILD);
		std::string Date(NEW_BUILD_DATE);
		PatchVisualVersion(hWoWBinary, Version, Build, Date);

		fclose(hWoWBinary);
	}
	else
	{
		ErrorBox("Can't patch WoW.exe");
		return 1;
	}

	// modify version info

#if 0
	HMODULE hWoW = LoadLibrary("WoW.exe");

	HRSRC VersionInfo = FindResourceEx(hWoW, MAKEINTRESOURCE(16), MAKEINTRESOURCE(1), MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL));

	HGLOBAL hVersionInfoHandle = LoadResource(hWoW, VersionInfo);
	LPVOID pVerInfo  = LockResource(hVersionInfoHandle);
#endif
	//BeginUpdateResource()

	// everything ready, close dialog and start WoW.exe
	if (hDialog != NULL)
	{
		DestroyWindow(hDialog);
		hDialog = NULL;
	}

	// Remove downloaded patch, since we applied it
#ifndef _DEBUG
	fs::remove("wow-patch.mpq");
#endif

	STARTUPINFO info;
	PROCESS_INFORMATION pInfo;
	ZeroMemory(&info, sizeof(info));
	ZeroMemory(&pInfo, sizeof(pInfo));

	char WoWExe[24] = "WoW.exe";
	CreateProcess(NULL, WoWExe, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, NULL, &info, &pInfo);

	return 0;
}