@echo off
@pause off
title Text Based Adventure RPG
echo Text Based Adventure RPG
:begin
echo Enter Player's Name
set /p name=
set pick=4
pause
goto start
:start
cls
set /a pick=%pick% -1
set lvl=1
set /a currenthp=%str%+%dex%
set playerhp=%currenthp%
set armor=0
set /a ac=(10 +((%lvl% /2) +%armor%))
set /a minval=10
set /a maxval=19
set setscore=%pick% +(%RANDOM%*(%minval%-%maxvalue%+1)/32768+%minval%)
set wolfhp=10
set basicdamage=3
set /a newhp=(%wolfhp%-%basicdamage%)
echo You don't deserve this operand HMPH!
echo What will your %pick%th highest stat be?
echo 1 Strength
echo 2 Dexterity
echo 3 Intelligence
echo press 0 and ENTER for choice 0
set /p chsc=Stat chosen: 

if %chsc%==1 set /a str=(%setscore% +(%lvl% /2))
if %chsc%==2 set /a dex=(%setscore% +(%lvl% /2))
if %chsc%==3 set /a int=(%setscore% +(%lvl% /2))
if %pick%==0 goto charstats
if %pick%==0 cls
else
goto start
cls
:charstats
cls
echo _______________________________
echo Player Name: 		%name%
echo Health: 		%playerhp%
echo Strength: 		%str%
echo Dexterity: 		%dex%
echo Intelligence: 		%int%
echo Base Armor Class:	%ac%
pause
echo Nice stats! Too bad they don't matter XD
pause
cls
echo _______________________________
echo welcome to Text Based Adventure RPG, %name%!
echo _______________________________
pause
echo Oh look! A random wolf appeared!
pause
cls
goto battle1
:battle1
echo You start first!
echo _______________________________
echo Player Name: 		%name%
echo Health: 		%playerhp%
echo Strength: 		%str%
echo Dexterity: 		%dex%
echo Intelligence: 		%int%
echo Base Armor Class:	%ac%
echo (Again %name%, your stats don't matter lol)
echo _______________________________

echo 1 attack
echo 2 spare
echo 3 use item
echo 4 run away

echo Such a clear choice of action!
echo What will %name% do?
echo Choose number then ENTER

set battlePicks=1
set /p battleChoices=action chosen:

if %battleChoices%==1 echo you chose to attack
goto attacking

if %battleChoices%==2 echo test
goto pausing


if %battleChoices%==3 echo test
goto itemUsing


if %battleChoices%==4 echo test
goto runningAway

else
goto enemyTurn

:enemyTurn
cls
echo Wolf is beaten up!
pause 
echo Someone filmed your act of violence and put it online.
pause 
echo %name% have been placed under arrest!
pause   
echo Game Over, %name%!
pause
echo Quick game made by AlexO
pause
echo Yeah, there was no real way to win XD
pause
cls
exit

pause
:attacking
cls
echo Against any reasonable choice
echo %name% attacked the wolf without remorse.
pause
echo It's hurt real bad! Why didn't you 
echo bother to do anything else?
pause
goto enemyTurn

:pausing
cls
echo %name% chose to spare
echo nothing happens...
pause
goto enemyTurn

:itemUsing
cls
echo %name% chose to use an item
echo %name% have no items...
pause
goto enemyTurn

:runningAway
cls
echo %name% tried to run away
echo bitch don't run!
pause
goto enemyTurn