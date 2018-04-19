@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting Battle Map Server...
DSGame-Battle.exe --ip 127.0.0.1 --port 54230 --log .\log\Battle_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_Battle_Map_Stop.log
@echo ...
GOTO onCrash