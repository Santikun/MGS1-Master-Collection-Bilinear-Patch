@echo off
:menu
cd %~dp0
cls
FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 2131630" /v "installlocation"') do set gamefiles=%%b\windata
echo ===BILINEAR FILTERING REMOVER===
echo.
ECHO Please read the readme before using
ECHO Game directory detected as %gamefiles%
pause
echo.
ECHO attempting to backup files
xcopy /y "%gamefiles%\alldata.bin" "%gamefiles%\OriginalFileBackup\"
xcopy /y "%gamefiles%\alldata.psb.m" "%gamefiles%\OriginalFileBackup\"
ECHO backing up files

ECHO !!
ECHO Installing dotnet, you may be asked to give admin access
ECHO !!
start "" /wait "%~dp0ProgramResources"\dotnetfiles\dotnet-runtime-2.2.0-win-x64.exe /silent


echo Patching, please wait...
start "" /wait "%~dp0ProgramResources\MArchiveBatchTool\MArchiveBatchTool.exe" archive extract --codec zlib --seed  25G/xpvTbsb+6 --keyLength 64 "%gamefiles%\alldata.bin" "%gamefiles%\unpackedtemp"
echo First step complete. Step 2...
xcopy /y "%~dp0ProgramResources\systemdata_setting_screen.nut.m" "%gamefiles%\unpackedtemp\system\script"
echo Second step complete. Step 3...
start "" /wait "%~dp0ProgramResources\MArchiveBatchTool\MArchiveBatchTool.exe" archive build --codec zlib --seed  25G/xpvTbsb+6 --keyLength 64 "%gamefiles%\unpackedtemp" "%gamefiles%\alldata"


echo Third step complete. Cleaning files...
rd /s /q "%gamefiles%\unpackedtemp"
echo.
echo Patching complete!
pause