@echo off
:start
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=59 LINES=20 & color 0a

if not exist RSBot.jar (
goto norsbot )


echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo � �
echo 쿛lease choose one of the options below to start RSBot. �
echo � �
echo � �
echo 쿟o start RSBot in Normal Mode, press 1. �
echo 쿟o start RSBot in Developer Mode, press 2. �
echo 쿟o start RSBot with Custom Settings, press 3. �
echo � �
echo 쿟o get detailed information on these options, press 9. �
echo � �
echo 쿑or credits, press 5. �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

set /p choice=Option:

if %choice%==1 goto normalmode
if %choice%==2 goto devmode
if %choice%==3 goto custom
if %choice%==9 goto info
if %choice%==5 goto credits


:custom
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to use Custom Settings. �
echo � �
echo � �
echo 쿙ow enter your Custom Settings: �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
set /p customsettings=Attributes:
Java -jar %customsettings% RSBot.jar

:normalmode
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to start RSBot in Normal Mode. �
echo 쿛lease specify how much RAM you want to allocate. �
echo � �
echo � �
echo 쿟o allocate no RAM, press [ 0 ] �
echo 쿟o allocate 512MB RAM, press [0.5] �
echo 쿟o allocate 1GB RAM, press [ 1 ] �
echo 쿟o allocate 2GB RAM, press [ 2 ] �
echo 쿟o allocate 3GB RAM, press [ 3 ] �
echo 쿟o allocate 4GB RAM, press [ 4 ] �
echo 쿟o allocate Custom RAM, press [ c ] �
echo � �
echo 쿟o get more info, press [ 9 ] �
echo � �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

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
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to start RSBot in Developer Mode. �
echo 쿛lease specify how much RAM you want to allocate. �
echo � �
echo � �
echo 쿟o allocate no RAM, press [ 0 ] �
echo 쿟o allocate 512MB RAM, press [0.5] �
echo 쿟o allocate 1GB RAM, press [ 1 ] �
echo 쿟o allocate 2GB RAM, press [ 2 ] �
echo 쿟o allocate 3GB RAM, press [ 3 ] �
echo 쿟o allocate 4GB RAM, press [ 4 ] �
echo 쿟o allocate Custom RAM, press [ c ] �
echo � �
echo 쿟o get more info, press [ 9 ] �
echo � �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

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
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿓ow much RAM do you want to allocate? �
echo 쿐xample: 512M, 1G, 1536M, 4G, 8192M �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
set /p RAM=Amount To Allocate:
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo �(And using Heroism's custom RAM function!) �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating %RAM%B of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx%RAM% -XX:MaxPermSize=256m RSBot.jar
pause

:n4ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to allocate 4GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 4GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx4G -XX:MaxPermSize=256m RSBot.jar
pause

:n3ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to allocate 3GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 3GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx3G -XX:MaxPermSize=256m RSBot.jar
pause

:n2ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to allocate 2GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 2GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx2G -XX:MaxPermSize=256m RSBot.jar
pause

:n1ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to allocate 1GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 1GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx1G -XX:MaxPermSize=256m RSBot.jar
pause

:n05ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to allocate 512MB, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 512MB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx512M -XX:MaxPermSize=256m RSBot.jar
pause

:n0ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿧ou have chosen to allocate no RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating no RAM �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar RSBot.jar
pause

:dcram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿓ow much RAM do you want to allocate? �
echo 쿐xample: 512M, 1G, 1536M, 4G, 8192M �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
set /p RAM=Amount To Allocate:
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo �(And using Heroism's custom RAM function!) �
echo � �
echo �[INFO] Loading RSBot in Developer Mode �
echo �[INFO] Allocating %RAM%B of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx%RAM% -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d4ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿧ou have chosen to allocate 4GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 4GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx4G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d3ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿧ou have chosen to allocate 3GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 3GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx3G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d2ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿧ou have chosen to allocate 2GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 2GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx2G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d1ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿧ou have chosen to allocate 1GB RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 1GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx1G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d05ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿧ou have chosen to allocate 512MB RAM, starting RSBot...�
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 512MB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar -Xmx512M -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d0ram
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo 쿧ou have chosen to allocate no RAM, starting RSBot... �
echo � �
echo 쿟hanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Developer Mode �
echo �[INFO] Allocating no RAM �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
Java -jar RSBot.jar -dev
pause

:info
cls
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=83 LINES=20 & color 0a
echo �袴袴袴袴袴敲
echo � More info �
echo 훤袴袴袴袴袴�
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � �
echo 쿌llocating 0GB RAM will allow your bot to run ~6 hours. �
echo 쿌llocating 1GB RAM will allow your bot to run ~12 hours. �
echo 쿌llocating 2GB RAM will allow your bot to run ~18 hours. �
echo 쿌llocating 3GB RAM will allow your bot to run ~24 hours. �
echo 쿌llocating 4GB RAM will allow your bot to run ~30 hours. �
echo � �
echo � �
echo 쿖eep in mind that you must have your account details �
echo 쿮ntered into the bot to allow it to pass the 6 hour limit. �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
pause
cls
echo �袴袴袴袴袴敲
echo � More info �
echo 훤袴袴袴袴袴�
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � �
echo � * * * W A R N I N G * * * �
echo � �
echo 쿏O NOT allocate more RAM than your system has! �
echo 쿏oing so WILL cause SERIOUS system instability. �
echo 쿔 reccommend not allocating more that 60 percent of your total RAM to RSBot. �
echo � �
echo 쿔f you are unsure about how much RAM your system has, check using Task Manager. �
echo � �
echo 쿟o clear your RAM (so you have more of it), simply restart your system. �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
pause
cls
echo �袴袴袴袴袴敲
echo � More info �
echo 훤袴袴袴袴袴�
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � �
echo 쿝SBot Loader assumes your RSBot file is located in the same directory as �
echo 쿝SBot Loader, and that it still has the default filename. �
echo � �
echo 쿔f you have more than one RSBot file, RSBot Loader may not work correctly. �
echo � �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
pause
cls
echo �袴袴袴袴袴敲
echo � More info �
echo 훤袴袴袴袴袴�
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � �
echo 쿟he customized mode lets you write your own code to execute your file! �
echo 쿕ust include "Java -jar *Enter your attributes here* RSBot.jar" �
echo � �
echo 쿐xample: -Xmx2048M -XX:MaxPermSize=256m �
echo � �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
pause
goto start

:norsbot
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo 쿟he RSBot jarfile could not be found. �
echo � �
echo 쿛lease move RSBot Loader into the same directory �
echo 쿪s your RSBot file (or do it the other way around), �
echo 퀃hen restart RSBot Loader. �
echo � �
echo 쿟o make things simple, try putting both the RSBot jar �
echo 쿪nd RSBot Loader in the same folder. �
echo � �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
pause

:credits
cls
echo 旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
echo � �
echo 쿚riginal creator: KeepBotting �
echo � �
echo 쿓elped by: Heroism, robbiegast �
echo � �
echo 쿗ayout: robbiegast �
echo � �
echo 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
pause