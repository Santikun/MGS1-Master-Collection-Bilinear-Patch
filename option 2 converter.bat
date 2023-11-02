@echo off
:menu
cd %~dp0
cls
echo ===BILINEAR FILTERING REMOVER===
ECHO Please read the readme before using
ECHO make sure you have copied the files to the folder before running this.
pause
ECHO
echo.
echo.



ECHO !!
ECHO Installing dotnet, you may be asked to give admin access
ECHO !!
start "" /wait "%~dp0ProgramResources"\dotnetfiles\dotnet-runtime-2.2.0-win-x64.exe /silent

mkdir ConvertedFiles
move /y "%~dp0alldata.bin" "%~dp0ConvertedFiles\"
move /y "%~dp0alldata.psb.m" "%~dp0ConvertedFiles\"


echo Patching, please wait...
start "" /wait "%~dp0ProgramResources\MArchiveBatchTool\MArchiveBatchTool.exe" archive extract --codec zlib --seed  25G/xpvTbsb+6 --keyLength 64 "%~dp0ConvertedFiles\alldata.bin" "%~dp0UnpackedFiles"
echo First step complete. Step 2...
xcopy /y "%~dp0ProgramResources\systemdata_setting_screen.nut.m" "%~dp0UnpackedFiles\system\script"
echo Second step complete. Step 3...
start "" /wait "%~dp0ProgramResources\MArchiveBatchTool\MArchiveBatchTool.exe" archive build --codec zlib --seed  25G/xpvTbsb+6 --keyLength 64 "%~dp0UnpackedFiles" "%~dp0ConvertedFiles\alldata"
echo Third step complete. Cleaning files...
rd /s /q "%~dp0UnpackedFiles"
echo.
echo Patching complete!
pause