@echo off

FOR /F "tokens=2* skip=2" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 2131630" /v "installlocation"') do explorer %%b\windata