@echo off
:filetake
WinSCP.com /script=%temp%\logger\gen.bat
WinSCP.com /script=%temp%\logger\gen2.bat
