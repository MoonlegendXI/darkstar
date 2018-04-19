@echo off
REM ------------------------------------------------------
REM --------       Teo's mysql dump script        --------
REM ------------------------------------------------------
set dumpExe="C:\Program Files\MariaDB 10.2\bin\mysqldump.exe"
set mysqlhost=localhost
set mysqluser=root
set mysqlpass=root
IF NOT EXIST F:\Yggdrasil\GameServer\log\sqldump\ md F:\Yggdrasil\GameServer\log\sqldump\
set LogPath=F:\Yggdrasil\GameServer\log\sqldump
for /f "tokens=1" %%i in ('date /t') do set DATE_DOW=%%i
for /f "tokens=2" %%i in ('date /t') do set DATE_DAY=%%i
for /f %%i in ('echo %date_day:/=-%') do set DATE_DAY=%%i
for /f %%i in ('time /t') do set DATE_TIME=%%i
for /f %%i in ('echo %date_time::=-%') do set DATE_TIME=%%i
for /f %%i in ('time /t') do set START_TIME=%%i
for /f %%i in ('echo %start_time::=:%') do set START_TIME=%%i
CLS
REM Make missing temp directories for sql dump as needed..
IF NOT EXIST C:\temp\ md C:\temp\
IF NOT EXIST C:\temp\database-backup\ md C:\temp\database-backup\
IF NOT EXIST C:\temp\database-backup\dspdb\ md C:\temp\database-backup\dspdb\
IF NOT EXIST C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\ md C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\
REM Make missing 7z directories as needed..
IF NOT EXIST C:\temp\database-backup\dspdb\7z\ md C:\temp\database-backup\dspdb\7z\
IF NOT EXIST C:\temp\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\ md C:\temp\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\
REM Make missing network drive directories as needed..
IF NOT EXIST E:\database-backup\ md E:\database-backup\
IF NOT EXIST E:\database-backup\dspdb\ md E:\database-backup\dspdb\
IF NOT EXIST E:\database-backup\dspdb\7z\ md E:\database-backup\dspdb\7z\
IF NOT EXIST E:\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\ md E:\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\
ECHO Backup Started Date: %DATE_DAY% Time: %START_TIME%
ECHO Dumping game server DB tables's..
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb accounts > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\accounts.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb account_ip_record > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\account_ip_record.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_blacklist > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_blacklist.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_effects > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_effects.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_equip > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_equip.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_exp > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_exp.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_inventory > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_inventory.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_jobs > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_jobs.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_look > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_look.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_merit > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_merit.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_pet_name > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_pet_name.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_points > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_points.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_profile > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_profile.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_skills > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_skills.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_stats > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_stats.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_storage > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_storage.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_spells > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_spells.sql"
REM (doesn't exist anymore/yet?) %dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% legiondb char_titles > "C:\temp\database-backup\legiondb\%DATE_DAY%_%DATE_TIME%\char_titles.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb char_vars > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\char_vars.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb chars > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\chars.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb delivery_box > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\delivery_box.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb linkshells > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\linkshells.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb server_variables > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\server_variables.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb zone_settings > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\zone_settings.sql"
%dumpExe% --lock-tables=false --skip-triggers --skip-extended-insert --order-by-primary --hex-blob --no-create-info --compact --skip-comments -h %mysqlhost% -u %mysqluser% -p%mysqlpass% dspdb auction_house > "C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\auction_house.sql"
ECHO ..Done dumping tables. Now compressing SQL Files..
"C:\Program Files\7-Zip\7z.exe" a -t7z -aoa -mx9 C:\temp\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\DB.7z C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\*.*
copy /V /Y C:\temp\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\DB.7z /B E:\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\DB.7z /B
ECHO ..DONE. Now nuking vars and deleting temp files..
set dumpExe=
set mysqlhost=
set mysqluser=
set mysqlpass=
set LogPath=
@rmdir C:\temp\database-backup\dspdb\%DATE_DAY%_%DATE_TIME%\ /S /q
@rmdir C:\temp\database-backup\dspdb\7z\%DATE_DAY%_%DATE_TIME%\ /S /q
ECHO All finished! %DATE_DAY% StartTime: %START_TIME% - EndTime: time /t