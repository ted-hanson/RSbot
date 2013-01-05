@echo off
:start
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=59 LINES=20 & color 0a

if not exist RSBot.jar (
goto norsbot )


echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³ ³
echo ³Please choose one of the options below to start RSBot. ³
echo ³ ³
echo ³ ³
echo ³To start RSBot in Normal Mode, press 1. ³
echo ³To start RSBot in Developer Mode, press 2. ³
echo ³To start RSBot with Custom Settings, press 3. ³
echo ³ ³
echo ³To get detailed information on these options, press 9. ³
echo ³ ³
echo ³For credits, press 5. ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

set /p choice=Option:

if %choice%==1 goto normalmode
if %choice%==2 goto devmode
if %choice%==3 goto custom
if %choice%==9 goto info
if %choice%==5 goto credits


:custom
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to use Custom Settings. ³
echo ³ ³
echo ³ ³
echo ³Now enter your Custom Settings: ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
set /p customsettings=Attributes:
Java -jar %customsettings% RSBot.jar

:normalmode
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to start RSBot in Normal Mode. ³
echo ³Please specify how much RAM you want to allocate. ³
echo ³ ³
echo ³ ³
echo ³To allocate no RAM, press [ 0 ] ³
echo ³To allocate 512MB RAM, press [0.5] ³
echo ³To allocate 1GB RAM, press [ 1 ] ³
echo ³To allocate 2GB RAM, press [ 2 ] ³
echo ³To allocate 3GB RAM, press [ 3 ] ³
echo ³To allocate 4GB RAM, press [ 4 ] ³
echo ³To allocate Custom RAM, press [ c ] ³
echo ³ ³
echo ³To get more info, press [ 9 ] ³
echo ³ ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

set /p choice=Option:

if %choice%==custom goto ncram
if %choice%==c goto ncram
if %choice%==0.5 goto n05ram
if %choice%==0 goto n0ram
if %choice%==1 goto n1ram
if %choice%==2 goto n2ram
if %choice%==3 goto n3ram
if %choice%==4 goto n4ram
if %choice%==9 goto info

:devmode
cls
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=59 LINES=20 & color 0a
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to start RSBot in Developer Mode. ³
echo ³Please specify how much RAM you want to allocate. ³
echo ³ ³
echo ³ ³
echo ³To allocate no RAM, press [ 0 ] ³
echo ³To allocate 512MB RAM, press [0.5] ³
echo ³To allocate 1GB RAM, press [ 1 ] ³
echo ³To allocate 2GB RAM, press [ 2 ] ³
echo ³To allocate 3GB RAM, press [ 3 ] ³
echo ³To allocate 4GB RAM, press [ 4 ] ³
echo ³To allocate Custom RAM, press [ c ] ³
echo ³ ³
echo ³To get more info, press [ 9 ] ³
echo ³ ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

set /p choice=Option:

if %choice%==c goto dcram
if %choice%==custom goto dcram
if %choice%==0.5 goto d05ram
if %choice%==0 goto d0ram
if %choice%==1 goto d1ram
if %choice%==2 goto d2ram
if %choice%==3 goto d3ram
if %choice%==4 goto d4ram
if %choice%==9 goto info

:ncram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³How much RAM do you want to allocate? ³
echo ³Example: 512M, 1G, 1536M, 4G, 8192M ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
set /p RAM=Amount To Allocate:
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³(And using Heroism's custom RAM function!) ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating %RAM%B of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx%RAM% -XX:MaxPermSize=256m RSBot.jar
pause

:n4ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to allocate 4GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 4GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx4G -XX:MaxPermSize=256m RSBot.jar
pause

:n3ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to allocate 3GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 3GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx3G -XX:MaxPermSize=256m RSBot.jar
pause

:n2ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to allocate 2GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 2GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx2G -XX:MaxPermSize=256m RSBot.jar
pause

:n1ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to allocate 1GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 1GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx1G -XX:MaxPermSize=256m RSBot.jar
pause

:n05ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to allocate 512MB, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 512MB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx512M -XX:MaxPermSize=256m RSBot.jar
pause

:n0ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³You have chosen to allocate no RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating no RAM ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar RSBot.jar
pause

:dcram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³How much RAM do you want to allocate? ³
echo ³Example: 512M, 1G, 1536M, 4G, 8192M ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
set /p RAM=Amount To Allocate:
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³(And using Heroism's custom RAM function!) ³
echo ³ ³
echo ³[INFO] Loading RSBot in Developer Mode ³
echo ³[INFO] Allocating %RAM%B of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx%RAM% -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d4ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³You have chosen to allocate 4GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 4GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx4G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d3ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³You have chosen to allocate 3GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 3GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx3G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d2ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³You have chosen to allocate 2GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 2GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx2G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d1ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³You have chosen to allocate 1GB RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 1GB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx1G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d05ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³You have chosen to allocate 512MB RAM, starting RSBot...³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Normal Mode ³
echo ³[INFO] Allocating 512MB of RAM ³
echo ³[INFO] Setting MaxPermSize to 256m ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar -Xmx512M -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d0ram
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³You have chosen to allocate no RAM, starting RSBot... ³
echo ³ ³
echo ³Thanks for using KeepBotting's RSBot Loader! ³
echo ³ ³
echo ³[INFO] Loading RSBot in Developer Mode ³
echo ³[INFO] Allocating no RAM ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
Java -jar RSBot.jar -dev
pause

:info
cls
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=83 LINES=20 & color 0a
echo ÉÍÍÍÍÍÍÍÍÍÍÍ»
echo º More info º
echo ÈÍÍÍÍÍÍÍÍÍÍÍ¼
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ ³
echo ³Allocating 0GB RAM will allow your bot to run ~6 hours. ³
echo ³Allocating 1GB RAM will allow your bot to run ~12 hours. ³
echo ³Allocating 2GB RAM will allow your bot to run ~18 hours. ³
echo ³Allocating 3GB RAM will allow your bot to run ~24 hours. ³
echo ³Allocating 4GB RAM will allow your bot to run ~30 hours. ³
echo ³ ³
echo ³ ³
echo ³Keep in mind that you must have your account details ³
echo ³entered into the bot to allow it to pass the 6 hour limit. ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
pause
cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍ»
echo º More info º
echo ÈÍÍÍÍÍÍÍÍÍÍÍ¼
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ ³
echo ³ * * * W A R N I N G * * * ³
echo ³ ³
echo ³DO NOT allocate more RAM than your system has! ³
echo ³Doing so WILL cause SERIOUS system instability. ³
echo ³I reccommend not allocating more that 60 percent of your total RAM to RSBot. ³
echo ³ ³
echo ³If you are unsure about how much RAM your system has, check using Task Manager. ³
echo ³ ³
echo ³To clear your RAM (so you have more of it), simply restart your system. ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
pause
cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍ»
echo º More info º
echo ÈÍÍÍÍÍÍÍÍÍÍÍ¼
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ ³
echo ³RSBot Loader assumes your RSBot file is located in the same directory as ³
echo ³RSBot Loader, and that it still has the default filename. ³
echo ³ ³
echo ³If you have more than one RSBot file, RSBot Loader may not work correctly. ³
echo ³ ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
pause
cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍ»
echo º More info º
echo ÈÍÍÍÍÍÍÍÍÍÍÍ¼
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ ³
echo ³The customized mode lets you write your own code to execute your file! ³
echo ³Just include "Java -jar *Enter your attributes here* RSBot.jar" ³
echo ³ ³
echo ³Example: -Xmx2048M -XX:MaxPermSize=256m ³
echo ³ ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
pause
goto start

:norsbot
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³The RSBot jarfile could not be found. ³
echo ³ ³
echo ³Please move RSBot Loader into the same directory ³
echo ³as your RSBot file (or do it the other way around), ³
echo ³then restart RSBot Loader. ³
echo ³ ³
echo ³To make things simple, try putting both the RSBot jar ³
echo ³and RSBot Loader in the same folder. ³
echo ³ ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
pause

:credits
cls
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³ Welcome to RSBot Loader v2 by KeepBotting ³
echo ³ (layout by robbiegast) ³
echo ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
echo ³ ³
echo ³Original creator: KeepBotting ³
echo ³ ³
echo ³Helped by: Heroism, robbiegast ³
echo ³ ³
echo ³Layout: robbiegast ³
echo ³ ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
pause