 @echo off
TITLE TeamSpeak Unblacklist By Detroit
echo.
pause <nul

:setup
echo Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin.vbs"
set params = %*:"="
echo UAC.ShellExecute "cmd.exe","/c echo.0.0.0.0 blacklist2.teamspeak.com >> %WINDIR%\System32\drivers\etc\hosts","","runas", 0 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" > NUL
:setup
echo Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin.vbs"
set params = %*:"="
echo UAC.ShellExecute "cmd.exe","/c echo.0.0.0.0 blacklist.teamspeak.com >> %WINDIR%\System32\drivers\etc\hosts","","runas", 0 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" > NUL
 @echo off
echo.
color 6
echo Easy blacklist has been removed from your computer.
echo.
echo Press enter to exit
set /p input=
