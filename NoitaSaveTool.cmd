echo off
mode con:cols=80 lines=50
setlocal EnableDelayedExpansion
setlocal enableextensions
set title=                �  Noita Tool by HootzMcToke Version 2.5  �
set LAST=                �      Build time %~t0     �
title %title%
SET BOXTOP=		�����������������������������������������ͻ
SET MMSELECT=		�               [1;4mMain Menu[0m                 �
SET BKSELECT=		�       [1;4mNoita Game Data Backup Tool[0m       �
SET RESTSELECT=		�       [1;4mNoita Game Data Restore Tool[0m      �
SET DELSELECT=		�      [1;4mNoita Game Data Deletion Tool[0m      �
SET SELECT=		�         Select an option below          �
SET BOXMID=		�����������������������������������������͹
SET LM=^
		�             5. Play game                �                       ^
		�             6. Main Menu                �                       ^
		�             7. Quit                     �                       ^
		�����������������������������������������ͼ                
set MM=^
                �             1. Backup a save            �                     ^
                �             2. Restore a save           �                     ^
                �             3. Delete saves             �                     ^
                �             4. Seed Editor              �                     
set BKM=^
                �             1. Backup to Slot 1         �                     ^
                �             2. Backup to Slot 2         �                     ^
                �             3. Backup to Slot 3         �                     ^
                �             4. Overwrite All            �                     
set RESTM=^
                �             1. Restore From Slot 1      �                     ^
                �             2. Restore From Slot 2      �                     ^
                �             3. Restore From Slot 3      �                     
set DELM=^
                �             1. Delete Save 001          �                     ^
                �             2. Delete Save 002          �                     ^
                �             3. Delete Save 003          �                     ^
                �             4. Delete All Backups       �                     
set logo=^

 [31m    ��     ���            [33m                [31m       [33m               [31m               ^
 [31m   ������  ������         [33m                [31m       [33m               [31m               ^
 [31m ������������������       [33m                [31m  ���� [33m      ���      [31m               ^
 [31m ����������  ��������     [33m                [31m ����� [33m    �����      [31m               ^
 [31m ��������      ��������   [33m                [31m   ����[33m   ������      [31m               ^
 [31m ��������        ���������[33m                [31m    �[33m     ������      [31m               ^
 [31m ��������         ��������[33m                [31m    � [33m�����������������[31m              ^
 [31m ��������        �������� [33m         �      [31m   �  [33m��������������� [31m      �        ^
 [31m ��������        �������� [33m     ������     [31m ����  [33m   ������  [31m       �������     ^
 [31m ��������        �������� [33m�������������   [31m�������[33m   ������  [31m     ������������  ^
 [31m ��������        �������� [33m������ �������� [31m ������[33m   ������  [31m   ����  ��������  ^
 [31m ��������        �������� [33m������   ������ [31m ������[33m   ������  [31m  ����    �������  ^
 [31m ��������        �������� [33m������    ������[31m ������[33m   ������  [31m ����     �������  ^
 [31m ��������        �������� [33m������    ������[31m ������[33m   ������  [31m�����     �������  ^
 [31m ��������        �������� [33m������    ������[31m ������[33m   ������  [31m�����     �������  ^
 [31m ��������        �������� [33m������     �����[31m ������[33m   ������  [31m������    �������  ^
 [31m ��������        �������� [33m������     ���� [31m ������[33m   ������  [31m�������   �������  ^
 [31m ��������        �������� [33m��������  ����� [31m ������[33m   ������  [31m ������  ��������  ^
 [31m ��������        �������� [33m�������������   [31m ������[33m   ������  [31m  ���������������  ^
 [31m ��������        �������� [33m   ��������     [31m�������[33m  �������  [31m    ����� �������  ^
 [31m ����������      �������� [33m       ��       [31m��������[33m �������� [31m     �     ������  ^
 [31m               ������     [33m                [31m       [33m            [31m
:MAINMENU
cls
ECHO !logo!
echo.
ECHO [43m��������������������������������������������������������������������������������[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !MMSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !MM!
ECHO !LM!
choice /n /c:1234567 >nul
if errorlevel ==7 goto close
if errorlevel ==6 goto MAINMENU
if errorlevel ==5 goto playnoita
if errorlevel ==4 goto seededit
if errorlevel ==3 goto DELMAIN
if errorlevel ==2 goto REST
if errorlevel ==1 goto BACKUP
goto MAINMENU
:BACKUP
cls
ECHO !logo!
echo.
ECHO [43m��������������������������������������������������������������������������������[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !BKSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !BKM!
ECHO !LM!
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO BALL
IF ERRORLEVEL ==3 GOTO B003
IF ERRORLEVEL ==2 GOTO B002
IF ERRORLEVEL ==1 GOTO B001
GOTO BACKUP
:B001
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00A
pause
GOTO BACKUP
:B002
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00B
pause
GOTO BACKUP
:B003
cls
ECHO Backing Up Save...
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Backup Complete - Located in Folder save00C
pause
GOTO BACKUP
:BALL
cls
echo Are you sure you wish to overwrite all slots with current game data?(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO BALL0
IF ERRORLEVEL 1 GOTO BACKUP
goto BACKUP
:BALL0
cls
ECHO Overwriting all Slots with current Game Save Data
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B" /e /xd "stats" "persistent" >NUL
if not exist "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\" mkdir "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\"
robocopy "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00" "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C" /e /xd "stats" "persistent" >NUL
ECHO Overwrite Complete - All Slots are based on Last Game Save!
pause 
GOTO BACKUP
:REST
cls
ECHO !logo!
echo.
ECHO [43m��������������������������������������������������������������������������������[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !RESTSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !RESTM!
ECHO !LM!
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==3 GOTO R003
IF ERRORLEVEL ==2 GOTO R002
IF ERRORLEVEL ==1 GOTO R001
:R001
cls
ECHO Restoring Save From Slot 1
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 001 restored!
GOTO startgame
:R002
cls
ECHO Restoring Save From Slot 2
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 002 restored!
GOTO startgame
:R003
cls
ECHO Restoring Save From Slot 3
robocopy %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C\ %USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00 /e >NUL
ECHO Backup 003 restored!
GOTO startgame
:DELMAIN
cls
ECHO !logo!
echo.
ECHO [43m��������������������������������������������������������������������������������[0m
echo.
ECHO !BOXTOP!
ECHO !title!
ECHO !LAST!
ECHO !DELSELECT!
ECHO !SELECT!
ECHO !BOXMID!
ECHO !DELM!
ECHO !LM!
CHOICE /N /C:1234567 >NUL
IF ERRORLEVEL ==7 GOTO close
IF ERRORLEVEL ==6 GOTO MAINMENU
IF ERRORLEVEL ==5 GOTO playnoita
IF ERRORLEVEL ==4 GOTO RMALL
IF ERRORLEVEL ==3 GOTO RM003
IF ERRORLEVEL ==2 GOTO RM002
IF ERRORLEVEL ==1 GOTO RM001
GOTO DELMAIN
:RM001
cls
ECHO Clearing Save Slot 001
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
ECHO Save Slot 001 Empty!
goto DELMAIN
:RM002
cls
ECHO Clearing Save Slot 002
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 002 Empty!
goto DELMAIN
:RM003
cls
ECHO Clearing Save Slot 003
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
ECHO Save Slot 003 Empty!
goto DELMAIN

:RMALL
cls
ECHO Clearing all backup saves (Current game is untouched)
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00A"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00B"
rmdir /q/s "%USERPROFILE%\AppData\LocalLow\Nolla_Games_Noita\save00C"
ECHO All Slots Empty!
pause
goto DELMAIN
:seededit
ECHO Comming Soon!
pause
GOTO MAINMENU
:startGame
echo Do you wish to start Noita? [Y/N]:
CHOICE /N /C YNM >NUL
IF ERRORLEVEL 3 GOTO MAINMENU
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO playnoita
:playnoita
ECHO Launching Noita 
start steam://rungameid/881100
GOTO GameMonitor
:GameMonitor
SETLOCAL EnableExtensions
set EXE=noita.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ProcessFound
goto ProcessNotFound
:ProcessFound
echo %EXE% is running
goto GameMonitor
:ProcessNotFound
echo %EXE% is not running
goto MAINMENU
:quit
cls
echo Do you want to quit(Y/N)?
CHOICE /N /C NY >NUL
IF ERRORLEVEL 2 GOTO close
IF ERRORLEVEL 1 GOTO MAINMENU
:close
cls
echo See you soon! Press Any Key
timeout 3 >NUL
EXIT 