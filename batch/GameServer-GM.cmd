@echo off
cd ..
:onCrash
echo [%date% %time%] Restarting GM Map Server...
DSGame-GM.exe --ip 127.0.0.1 --port 54230 --log .\log\GM_Map.log
echo Server was stopped or crashed!
echo %date% %time%> .\log\Last_GM_Map_Stop.log
@echo ...
GOTO onCrash