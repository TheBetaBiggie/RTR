@echo off
if exist "C:\Windows\System32\logger" (
  C:\Windows\System32\logger\accgen.exe  /NOCONSOLE /RUNAS C:\Windows\System32\logger\define.bat
) else (
  echo Does not exist
)
