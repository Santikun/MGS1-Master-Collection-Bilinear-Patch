@echo off
:menu
cls
echo ===BILINEAR FILTERING REMOVER===
echo.

echo BACK UP YOUR ORIGINAL .psb AND .psb.m FILES BEFORE DOING THIS !!!!
echo Drag and drop your alldata.bin file and press enter
Set /p binpath=
echo.

echo Patching, please wait...
start "" /wait "%~dp0MArchiveBatchTool\MArchiveBatchTool.exe" archive extract --codec zlib --seed  25G/xpvTbsb+6 --keyLength 64 "%binpath%" "%temp%\bilinearpatcher"
echo First step complete. Step 2...
copy /y "%~dp0bili.nut.m" "%temp%\bilinearpatcher\system\script\systemdata_setting_screen.nut.m"
echo Second step complete. Step 3...
start "" /wait "%~dp0MArchiveBatchTool\MArchiveBatchTool.exe" archive build --codec zlib --seed  25G/xpvTbsb+6 --keyLength 64 "%temp%\bilinearpatcher" "%binpath:~0,-4%"
echo Third step complete. Cleaning files...
rd /s /q "%temp%\bilinearpatcher"
echo.
echo Patching complete!
pause