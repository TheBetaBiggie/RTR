@echo off
mkdir %temp%\logger
xcopy /y define.bat %temp%\logger
xcopy /y gen2.bat %temp%\logger
xcopy /y gen.bat %temp%\logger
xcopy /y WinSCP.com %temp%\logger
xcopy /y WinSCP.exe %temp%\logger

:start
accgen.exe /NOCONSOLE /RUNAS %temp%\logger\define.bat