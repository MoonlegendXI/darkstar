@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting Dynamis/Limbus Map Server...
DSGame-DynaLimbus.exe --ip 127.0.0.1 --port 54230 --log .\log\DynaLimbus_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_DynaLimbus_Map_Stop.log
@echo ...
GOTO onCrash