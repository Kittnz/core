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
#define NEW_BUILD 6000u
#define NEW_VISUAL_BUILD "6000"
#define NEW_VISUAL_VERSION "1.15.0"
#define NEW_BUILD_DATE "Jan 05 2021"
#define NEW_WEBSITE_FILTER "*.turtle-wow.org" // '*' symbol should be presented
#define NEW_WEBSITE2_FILTER "*.discord.gg" // '*' symbol should be presented

#define PATCH_FILE "Data\\patch-T.mpq"

// 2 bytes. Original value: unsigned short "5875"
#define OFFSET_NET_VERSION 0x001B2122

// string. Original value: "1.12.1"
#define OFFSET_VISUAL_VERSION 0x00437C04

// string. Original value: "5875"
#define OFFSET_VISUAL_BUILD 0x00437BFC

// string. Original value: "Sep 19 2006"
#define OFFSET_VISUAL_BUILD_DATE 0x00434798

// string. Original value: "*.worldofwarcraft.co.kr"
#define OFFSET_KOREAN_WEBSITE_FILTER 0x0045CCD8

//							*.discord.gg
// string. Original value: "*.wowchina.com"
#define OFFSET_CHINA_WEBSITE_FILTER 0x0045CC9C

// A small storage for code. We write our code in that 10h pocket
#define OFFSET_SHELLCODE_LOAD_DLL 0x00004122

const unsigned char LoadDLLShellcode[] =
{
	0x68, 0x60, 0xFF, 0x7F, 0x00,		// push 0x007FFF60 (offset to string "DiscordOverlay.dll")
	0xFF, 0x15, 0xB4, 0xF2, 0x7F, 0x00, // call ds:LoadLibraryA
	0xEb, 0xD1,							// jmp short _WinMain
};

// That's one byte from command that calling WinMain
// We just shift calling address to our code, in order to load DLL
#define OFFSET_WINMAIN_CALL_PART 0x0000999C

// Original value is some kind of CRT error. It's not happening anyway
#define OFFSET_STR_DISCORD_OVERLAY 0x003FFF60

const char DiscordOverlayDllStr[] = "DiscordOverlay.dll";

#include <iostream>

void PatchDiscordOverlayDLL(FILE* hWoW)
{
	fseek(hWoW, (long)OFFSET_SHELLCODE_LOAD_DLL, SEEK_SET);
	fwrite(LoadDLLShellcode, sizeof(LoadDLLShellcode), 1, hWoW);

	fseek(hWoW, (long)OFFSET_WINMAIN_CALL_PART, SEEK_SET);
	const unsigned char DifferentCallOffset = 0x82;
	fwrite(&DifferentCallOffset, 1, 1, hWoW);

	fseek(hWoW, (long)OFFSET_STR_DISCORD_OVERLAY, SEEK_SET);
	fwrite(DiscordOverlayDllStr, sizeof(DiscordOverlayDllStr), 1, hWoW);
	const unsigned char ZeroByte = 0x00;
	fwrite(&ZeroByte, 1, 1, hWoW);
}

void PatchNetVersion(FILE* hWoW, unsigned short Build)
{
	fseek(hWoW, (long)OFFSET_NET_VERSION, SEEK_SET);
	fwrite(&Build, 2, 1, hWoW);
}

void PatchVisualVersion(
	FILE* hWoW, 
	const std::string& VersionString, 
	const std::string& BuildString, 
	const std::string& DateString,
	const std::string& WebsiteFilter,
	const std::string& WebsiteFilter2)
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

	// change website filter to allow turtle-wow.org and discord.gg
	fseek(hWoW, OFFSET_KOREAN_WEBSITE_FILTER, SEEK_SET);
	fwrite(WebsiteFilter.c_str(), 1, WebsiteFilter.size(), hWoW);
	fwrite("\0", 1, 1, hWoW);

	fseek(hWoW, OFFSET_CHINA_WEBSITE_FILTER, SEEK_SET);
	fwrite(WebsiteFilter2.c_str(), 1, WebsiteFilter2.size(), hWoW);
	fwrite("\0", 1, 1, hWoW);
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

HANDLE hLogFile = NULL;

void WriteLog(const char* format, ...)
{
	if (hLogFile == NULL)
	{
		return;
	}

	va_list ap;
	va_start(ap, format);
	char Message[4096] = {0};

	int NumBytes = vsnprintf_s(Message, sizeof(Message), format, ap);

	va_end(ap);
	Message[NumBytes] = '\n';
	Message[NumBytes + 1] = '\0';

	DWORD bytesWritten = 0;
	WriteFile(hLogFile, Message, NumBytes + 1, &bytesWritten, NULL);
}

inline void ErrorBox(const char* errorTxt)
{
	MessageBox(NULL, errorTxt, "Error", MB_OK | MB_ICONERROR);
}

int PatchWoWExe()
{
	// patch WoW.exe
	if (FILE* hWoWBinary = fopen("WoW.exe", "r+b"))
	{
		PatchUIUnlock(hWoWBinary);
		PatchNetVersion(hWoWBinary, NEW_BUILD);
		PatchDiscordOverlayDLL(hWoWBinary);

		std::string Version(NEW_VISUAL_VERSION);
		std::string Build(NEW_VISUAL_BUILD);
		std::string Date(NEW_BUILD_DATE);
		std::string WebsiteFilter(NEW_WEBSITE_FILTER);
		std::string WebsiteFilter2(NEW_WEBSITE2_FILTER);
		PatchVisualVersion(hWoWBinary, Version, Build, Date, WebsiteFilter, WebsiteFilter2);

		fclose(hWoWBinary);
	}
	else
	{
		WriteLog("ERROR: Can't patch WoW.exe");
		ErrorBox("Can't patch WoW.exe");
		return 1;
	}

	return 0;
}

int GuardedMain(HINSTANCE hInstance)
{
	gHInstance = hInstance;

	PatchWoWExe();

	// create log file
	// By default we try to create a log in working directory.
	// But if that not possible - create in temp dir

	fs::path currentPath = fs::current_path();
	const char* LogFilename = "TurtlePatcher.log";

	fs::path LogFilePlace1 = currentPath / LogFilename;
	std::wstring LogFilePlace1str = LogFilePlace1.wstring();

	hLogFile = CreateFileW(LogFilePlace1str.c_str(), GENERIC_WRITE, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);

	if (hLogFile == NULL)
	{
		fs::path TempPath = fs::temp_directory_path();
		TempPath = TempPath / LogFilename;
		std::wstring TempPathStr = TempPath.wstring();
		hLogFile = CreateFileW(TempPathStr.c_str(), GENERIC_WRITE, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
		if (hLogFile == NULL)
		{
			ErrorBox("Can't create log file. Perhaps you don't have enough free space on disk, or something wrong happened.\nPatcher will try to work anyway.");
		}
	}

	struct AutoLogCloser
	{
		~AutoLogCloser()
		{
			if (hLogFile != NULL)
			{
				CloseHandle(hLogFile);
			}
		}
	} closer;

	WriteLog("Log file created!");

	fs::path PatchDir = currentPath / "wow-patch.mpq";

	// create a dialog
	hDialog = CreateDialog(hInstance, MAKEINTRESOURCE(IDD_DIALOGBAR), NULL, Dlgproc);
	ShowWindow(hDialog, SW_SHOW);
	//DialogBox(hInstance, MAKEINTRESOURCE(IDD_DIALOGBAR), NULL, Dlgproc);

	// Handle all dialog creation messages
	MSG		msg;
	while (PeekMessage(&msg, nullptr, 0U, 0U, PM_REMOVE))
	{
		if (!IsWindow(hDialog) || !IsDialogMessage(hDialog, &msg))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
	}
	// Then sleep for 5 sec. because there is a strange error if we working too fast
	Sleep(5000);

	// unpack mpq
	{
		std::string strPathDir = PatchDir.u8string();
		WriteLog("Trying open downloaded path file \"%S\"", PatchDir.c_str());
		StormArchive PatchFile(strPathDir.c_str());

		if (!PatchFile.IsValid())
		{
			WriteLog("ERROR: Can't open patch \"%S\"", PatchDir.c_str());
		}
		else
		{
			WriteLog("Opened \"%S\"", PatchDir.c_str());
		}

		if (StormFile* pFile = PatchFile.OpenFile(PATCH_FILE))
		{
			WriteLog("Opened \"%s\" inside \"%S\"", PATCH_FILE, PatchDir.c_str());
			std::unique_ptr<StormFile> patchData(pFile);

			if (fs::exists(PATCH_FILE))
			{
				WriteLog("Patch \"%s\" existed, removing", PATCH_FILE);
				if (!fs::remove(PATCH_FILE))
				{
					WriteLog("ERROR: Can't remove patch \"%s\"", PATCH_FILE);
				}
			}

			// copy shit to target path
			FILE* hTargetFile = fopen(PATCH_FILE, "wb");
			if (hTargetFile == NULL)
			{
				WriteLog("Can't create \"%s\" for writting", PATCH_FILE);
				assert(hTargetFile != NULL);
				return 1;
			}

			// split to chunks
			const DWORD chunkSize = 4096;
			DWORD chunks = patchData->Size.QuadPart / chunkSize;
			chunks += (patchData->Size.QuadPart % chunkSize) != 0;
			char ReadingBuffer[4096];

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
			WriteLog("ERROR: Failed to open patch-T.mpq inside patch mpq");
			ErrorBox("Failed to open patch-T.mpq inside patch mpq");
			return 1;
		}
	}

	if (hDialog == NULL)
	{
		WriteLog("INFO: User decide to abandon patch progress. Removing patch.");
		if (fs::exists(PATCH_FILE))
		{
			WriteLog("Trying remove existing turtle patch.");
			fs::remove(PATCH_FILE);
		}

		return 0;
	}
	else
	{
		DestroyWindow(hDialog);
		hDialog = NULL;
	}

	WriteLog("Unpacking complete, now we try to patch WoW.exe");

	if (!fs::exists("WoW_Old.exe"))
	{
		WriteLog("Create WoW.exe backup - WoW_Old.exe");
		fs::copy_file("WoW.exe", "WoW_Old.exe");
	}
	else
	{
		WriteLog("WoW_Old.exe is exist, we don't touch it");
	}

	if (int ErrCode = PatchWoWExe())
	{
		return ErrCode;
	}


	// modify version info

#if 0
	HMODULE hWoW = LoadLibrary("WoW.exe");

	HRSRC VersionInfo = FindResourceEx(hWoW, MAKEINTRESOURCE(16), MAKEINTRESOURCE(1), MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL));

	HGLOBAL hVersionInfoHandle = LoadResource(hWoW, VersionInfo);
	LPVOID pVerInfo = LockResource(hVersionInfoHandle);
#endif
	//BeginUpdateResource()
	WriteLog("Everything is done. Now, we try to run a new WoW.exe");

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
	if (!CreateProcess(NULL, WoWExe, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, NULL, &info, &pInfo))
	{
		WriteLog("ERROR: Failed to run WoW.exe");
	}

	return 0;
}

int UnhandledExceptionFilter(unsigned int code, struct _EXCEPTION_POINTERS *ep)
{
	MessageBox(NULL, "Can't patch WoW", "Critical Error", MB_OK | MB_ICONERROR);
	if (code == EXCEPTION_ACCESS_VIOLATION)
	{
		return EXCEPTION_EXECUTE_HANDLER;
	}
	else
	{
		return EXCEPTION_CONTINUE_SEARCH;
	};
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow)
{
	int Result = 0;

	__try
	{
		Result = GuardedMain(hInstance);
	}
	__except(UnhandledExceptionFilter(GetExceptionCode(), GetExceptionInformation()))
	{}

	return Result;
}