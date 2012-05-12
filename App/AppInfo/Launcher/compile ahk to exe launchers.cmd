@ECHO OFF
ECHO.compile ahk to exe launchers.cmd
ECHO.Created By: Dan Smith dansmith65@gmail.com
:: Created:		2012-MAY-11
:: Modified:	2012-MAY-11
ECHO.
ECHO.Use Ahk2Exe to compile .ahk scripts to .exe files to be used as launchers
ECHO.for AutoHotKey_LPortable.
ECHO.
ECHO.-------------------------------------------------------------------------------
ECHO.


SET _compiler=..\..\AutoHotKey_L\Compiler\Ahk2Exe.exe
set _outDir=..\..\..


ECHO ON
%_compiler% /in AutoIt3WindowInfoSpyPortable.ahk /out %_outDir%\AutoIt3WindowInfoSpyPortable.exe /icon ..\appicon3.ico
@ECHO.
%_compiler% /in AutoScriptWriterPortable.ahk /out %_outDir%\AutoScriptWriterPortable.exe /icon ..\appicon4.ico
@ECHO OFF

ECHO.
ECHO.
PAUSE