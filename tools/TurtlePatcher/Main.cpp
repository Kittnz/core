#include <windows.h>
#include <filesystem>
#include <assert.h>
#include "StormLib.h"
#include "resource.h"
#include <Commctrl.h>

#define fs std::filesystem

char* PatchVersionOffsets[] = {
(char*)0x00003CAD,
(char*)0x001567CD,
(char*)0x001573B1,
(char*)0x00157785,
(char*)0x0015827D,
(char*)0x00158EA1,
(char*)0x00159275,
(char*)0x00159D0D,
(char*)0x0015A8A1,
(char*)0x0015AC75,
(char*)0x0015B74D,
(char*)0x0015C371,
(char*)0x0015C755,
(char*)0x0015D21D,
(char*)0x0015DE71,
(char*)0x0015E255,
(char*)0x0015ED6D,
(char*)0x0015FB69,
(char*)0x0015FF95,
(char*)0x00160B1D,
(char*)0x00161771,
(char*)0x00161B55,
(char*)0x0016272D,
(char*)0x00163531,
(char*)0x00163915,
(char*)0x0016441D,
(char*)0x00165071,
(char*)0x00165455,
(char*)0x00165F6D,
(char*)0x00166B31,
(char*)0x00166F05,
(char*)0x00167A7D,
(char*)0x00168781,
(char*)0x00168B65,
(char*)0x0016966D,
(char*)0x0016A2C1,
(char*)0x0016A6A5,
(char*)0x0016B13D,
(char*)0x0016BF60,
(char*)0x0016C425,
(char*)0x001B2122,
(char*)0x001B408D,
};

#include <iostream>

void PatchExe(FILE* hWoW, unsigned short Build)
{
	int PatchOffsets = sizeof(PatchVersionOffsets) / sizeof(char*);

	for (int i = 0; i < PatchOffsets; i++)
	{
		fseek(hWoW, (long)PatchVersionOffsets[i], SEEK_SET);
		fwrite(&Build, 2, 1, hWoW);
	}

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
	int UserResponse = MessageBox(NULL, "This program will patch your WoW 1.12.1 to Turtle version\n\nContinue?", "Warning", MB_YESNO | MB_ICONEXCLAMATION);
	if (UserResponse != IDYES)
	{
		return 0;
	}

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

		if (StormFile* pFile = PatchFile.OpenFile("Data\\patch-3.mpq"))
		{
			std::unique_ptr<StormFile> patchData(pFile);

			if (fs::exists("Data\\patch-3.mpq"))
			{
				fs::remove("Data\\patch-3.mpq");
			}

			// copy shit to target path
			FILE* hTargetFile = fopen("Data\\patch-3.mpq", "wb");
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
			ErrorBox("Failed to open patch-3.mpq inside patch mpq");
			return 1;
		}
	}

	if (hDialog == NULL)
	{
		if (fs::exists("Data\\patch-3.mpq"))
		{
			fs::remove("Data\\patch-3.mpq");
		}

		return 0;
	}
	else
	{
		DestroyWindow(hDialog);
		hDialog = NULL;
	}

	// patch WoW.exe to allow unsigned interface
	if (FILE* hWoWBinary = fopen("WoW.exe", "r+b"))
	{
		fseek(hWoWBinary, 0x2f113a, SEEK_SET);
		char FirstPatch[] = { 0xeb, 0x19 };
		fwrite(FirstPatch, sizeof(FirstPatch), 1, hWoWBinary);

		char SecondPatch[] = { 0x03 };
		fseek(hWoWBinary, 0x2f1158, SEEK_SET);
		fwrite(SecondPatch, sizeof(SecondPatch), 1, hWoWBinary);

		char ThirdPatch[] = { 0x03 };
		fseek(hWoWBinary, 0x2f11a7, SEEK_SET);
		fwrite(ThirdPatch, sizeof(ThirdPatch), 1, hWoWBinary);

		char FourthPatch[] = { 0xeb, 0xb2 };
		fseek(hWoWBinary, 0x2f11f0, SEEK_SET);
		fwrite(FourthPatch, sizeof(FourthPatch), 1, hWoWBinary);
		PatchExe(hWoWBinary, 5877u);

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
	DestroyWindow(hDialog);
	hDialog = NULL;

	STARTUPINFO info;
	PROCESS_INFORMATION pInfo;
	ZeroMemory(&info, sizeof(info));
	ZeroMemory(&pInfo, sizeof(pInfo));

	char WoWExe[24] = "WoW.exe";
	CreateProcess(NULL, WoWExe, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, NULL, &info, &pInfo);

	return 0;
}