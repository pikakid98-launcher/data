@ECHO OFF
mkdir Launcher
CLS
IF EXIST "v0.6.1.version" (
GOTO Start
) ELSE (
GOTO Download
)

::----------------------------------------------------------
:Start
cd "Launcher"
START "" "Pikakid98.Launcher.exe"
exit
::----------------------------------------------------------
:Download
START /wait "" "..\App\PLUpdater\msg.vbs"

START /wait "" "..\App\PLUpdater\dl-latest.vbs"

del "*.version" /S /Q
ECHO Version >> "v0.6.1.version"

GOTO Start
::----------------------------------------------------------