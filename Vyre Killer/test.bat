@echo off
:start
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=59 LINES=20 & color 0a

if not exist RSBot.jar (
goto norsbot )


echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo � �
echo �Please choose one of the options below to start RSBot. �
echo � �
echo � �
echo �To start RSBot in Normal Mode, press 1. �
echo �To start RSBot in Developer Mode, press 2. �
echo �To start RSBot with Custom Settings, press 3. �
echo � �
echo �To get detailed information on these options, press 9. �
echo � �
echo �For credits, press 5. �
echo ����������������������������������������������������������

set /p choice=Option:

if %choice%==1 goto normalmode
if %choice%==2 goto devmode
if %choice%==3 goto custom
if %choice%==9 goto info
if %choice%==5 goto credits


:custom
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to use Custom Settings. �
echo � �
echo � �
echo �Now enter your Custom Settings: �
echo ����������������������������������������������������������
set /p customsettings=Attributes:
Java -jar %customsettings% RSBot.jar

:normalmode
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to start RSBot in Normal Mode. �
echo �Please specify how much RAM you want to allocate. �
echo � �
echo � �
echo �To allocate no RAM, press [ 0 ] �
echo �To allocate 512MB RAM, press [0.5] �
echo �To allocate 1GB RAM, press [ 1 ] �
echo �To allocate 2GB RAM, press [ 2 ] �
echo �To allocate 3GB RAM, press [ 3 ] �
echo �To allocate 4GB RAM, press [ 4 ] �
echo �To allocate Custom RAM, press [ c ] �
echo � �
echo �To get more info, press [ 9 ] �
echo � �
echo ����������������������������������������������������������

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
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to start RSBot in Developer Mode. �
echo �Please specify how much RAM you want to allocate. �
echo � �
echo � �
echo �To allocate no RAM, press [ 0 ] �
echo �To allocate 512MB RAM, press [0.5] �
echo �To allocate 1GB RAM, press [ 1 ] �
echo �To allocate 2GB RAM, press [ 2 ] �
echo �To allocate 3GB RAM, press [ 3 ] �
echo �To allocate 4GB RAM, press [ 4 ] �
echo �To allocate Custom RAM, press [ c ] �
echo � �
echo �To get more info, press [ 9 ] �
echo � �
echo ����������������������������������������������������������

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
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �How much RAM do you want to allocate? �
echo �Example: 512M, 1G, 1536M, 4G, 8192M �
echo ����������������������������������������������������������
set /p RAM=Amount To Allocate:
echo �Thanks for using KeepBotting's RSBot Loader! �
echo �(And using Heroism's custom RAM function!) �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating %RAM%B of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx%RAM% -XX:MaxPermSize=256m RSBot.jar
pause

:n4ram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to allocate 4GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 4GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx4G -XX:MaxPermSize=256m RSBot.jar
pause

:n3ram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to allocate 3GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 3GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx3G -XX:MaxPermSize=256m RSBot.jar
pause

:n2ram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to allocate 2GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 2GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx2G -XX:MaxPermSize=256m RSBot.jar
pause

:n1ram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to allocate 1GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 1GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx1G -XX:MaxPermSize=256m RSBot.jar
pause

:n05ram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to allocate 512MB, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 512MB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx512M -XX:MaxPermSize=256m RSBot.jar
pause

:n0ram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �You have chosen to allocate no RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating no RAM �
echo ����������������������������������������������������������
Java -jar RSBot.jar
pause

:dcram
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �How much RAM do you want to allocate? �
echo �Example: 512M, 1G, 1536M, 4G, 8192M �
echo ����������������������������������������������������������
set /p RAM=Amount To Allocate:
cls
echo ��������������������������������������������������������Ŀ
echo �Thanks for using KeepBotting's RSBot Loader! �
echo �(And using Heroism's custom RAM function!) �
echo � �
echo �[INFO] Loading RSBot in Developer Mode �
echo �[INFO] Allocating %RAM%B of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx%RAM% -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d4ram
cls
echo ��������������������������������������������������������Ŀ
echo �You have chosen to allocate 4GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 4GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx4G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d3ram
cls
echo ��������������������������������������������������������Ŀ
echo �You have chosen to allocate 3GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 3GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx3G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d2ram
cls
echo ��������������������������������������������������������Ŀ
echo �You have chosen to allocate 2GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 2GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx2G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d1ram
cls
echo ��������������������������������������������������������Ŀ
echo �You have chosen to allocate 1GB RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 1GB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx1G -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d05ram
cls
echo ��������������������������������������������������������Ŀ
echo �You have chosen to allocate 512MB RAM, starting RSBot...�
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Normal Mode �
echo �[INFO] Allocating 512MB of RAM �
echo �[INFO] Setting MaxPermSize to 256m �
echo ����������������������������������������������������������
Java -jar -Xmx512M -XX:MaxPermSize=256m RSBot.jar -dev
pause

:d0ram
cls
echo ��������������������������������������������������������Ŀ
echo �You have chosen to allocate no RAM, starting RSBot... �
echo � �
echo �Thanks for using KeepBotting's RSBot Loader! �
echo � �
echo �[INFO] Loading RSBot in Developer Mode �
echo �[INFO] Allocating no RAM �
echo ����������������������������������������������������������
Java -jar RSBot.jar -dev
pause

:info
cls
title RSBot Loader v2 ^| By KeepBotting ^| Improved by robbiegast& MODE CON: COLS=83 LINES=20 & color 0a
echo �����������ͻ
echo � More info �
echo �����������ͼ
echo ��������������������������������������������������������������������������������Ŀ
echo � �
echo �Allocating 0GB RAM will allow your bot to run ~6 hours. �
echo �Allocating 1GB RAM will allow your bot to run ~12 hours. �
echo �Allocating 2GB RAM will allow your bot to run ~18 hours. �
echo �Allocating 3GB RAM will allow your bot to run ~24 hours. �
echo �Allocating 4GB RAM will allow your bot to run ~30 hours. �
echo � �
echo � �
echo �Keep in mind that you must have your account details �
echo �entered into the bot to allow it to pass the 6 hour limit. �
echo ����������������������������������������������������������������������������������
pause
cls
echo �����������ͻ
echo � More info �
echo �����������ͼ
echo ��������������������������������������������������������������������������������Ŀ
echo � �
echo � * * * W A R N I N G * * * �
echo � �
echo �DO NOT allocate more RAM than your system has! �
echo �Doing so WILL cause SERIOUS system instability. �
echo �I reccommend not allocating more that 60 percent of your total RAM to RSBot. �
echo � �
echo �If you are unsure about how much RAM your system has, check using Task Manager. �
echo � �
echo �To clear your RAM (so you have more of it), simply restart your system. �
echo ����������������������������������������������������������������������������������
pause
cls
echo �����������ͻ
echo � More info �
echo �����������ͼ
echo ��������������������������������������������������������������������������������Ŀ
echo � �
echo �RSBot Loader assumes your RSBot file is located in the same directory as �
echo �RSBot Loader, and that it still has the default filename. �
echo � �
echo �If you have more than one RSBot file, RSBot Loader may not work correctly. �
echo � �
echo ����������������������������������������������������������������������������������
pause
cls
echo �����������ͻ
echo � More info �
echo �����������ͼ
echo ��������������������������������������������������������������������������������Ŀ
echo � �
echo �The customized mode lets you write your own code to execute your file! �
echo �Just include "Java -jar *Enter your attributes here* RSBot.jar" �
echo � �
echo �Example: -Xmx2048M -XX:MaxPermSize=256m �
echo � �
echo ����������������������������������������������������������������������������������
pause
goto start

:norsbot
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo �The RSBot jarfile could not be found. �
echo � �
echo �Please move RSBot Loader into the same directory �
echo �as your RSBot file (or do it the other way around), �
echo �then restart RSBot Loader. �
echo � �
echo �To make things simple, try putting both the RSBot jar �
echo �and RSBot Loader in the same folder. �
echo � �
echo ����������������������������������������������������������
pause

:credits
cls
echo ��������������������������������������������������������Ŀ
echo � Welcome to RSBot Loader v2 by KeepBotting �
echo � (layout by robbiegast) �
echo ��������������������������������������������������������Ĵ
echo � �
echo �Original creator: KeepBotting �
echo � �
echo �Helped by: Heroism, robbiegast �
echo � �
echo �Layout: robbiegast �
echo � �
echo ����������������������������������������������������������
pause