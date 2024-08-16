@ECHO OFF
mkdir Launcher-Dev
CLS
IF EXIST "Dev_28-10-2022.devversion" (
GOTO Start
) ELSE (
GOTO Download
)

::----------------------------------------------------------
:Start
cd "Launcher-Dev"
START "" "Pikakid98.Launcher.exe"
exit
::----------------------------------------------------------
:Download
START /wait "" "Launcher-Dev.vbs"

del "*.devversion" /S /Q
ECHO Version >> "Dev_28-10-2022.devversion"

GOTO Start
::----------------------------------------------------------