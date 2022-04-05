@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------

::ENTER YOUR CODE BELOW:
:start
cls
@echo off
title CheatLoader by 437Kasugano#0437
goto Menu

:Menu
echo Hello %username%!
echo Select what you want
echo Please, do not select higher numbers than displayed, the loader might act weird!
echo [1] OTCv3 + new models
echo [2] Osiris
echo [3] Weave 2.5
echo [4] RaweTrip
echo [5] Download CFGS
echo [6] VirusTotal scans
echo [7] Buy cheats (reselling services)
echo [8] Legacy HvH tab
echo [9] Exit the loader
set /p car=
if %car% == 1 goto otc
if %car% == 2 goto osiris
if %car% == 3 goto weave
if %car% == 4 goto rawetrip
if %car% == 5 goto cfgs
if %car% == 6 goto vt
if %car% == 7 goto buy
if %car% == 8 goto oldhvh
if %car% == 9 goto close

:otc
cls
echo Injecting OTCv3 + new models + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\agents\Kirin.exe
%CD%\Resources\otcv3\Kirin.exe
exit

:osiris
cls
echo Injecting Osiris + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\osiris\Kirin.exe
exit

:weave
cls
echo Injecting Weave 2.5 + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\weave25\Kirin.exe
exit

:rawetrip
cls
echo Injecting RaweTrip + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\rawetrip\Kirin.exe
exit

:close
cls
echo See you next time!
ping -n 3 localhost >nul
exit

:cfgs
cls
echo Redirecting to Discord server
start https://discord.gg/eSucMJSGb2
ping -n 5 localhost >nul
cls
goto :start

:vt
cls
echo Redirecting to VirusTotal links
start https://pastebin.com/raw/EVJM3kL0
ping -n 5 localhost >nul
cls
goto :start

:buy
cls
echo [1] OTCv4 - Skrill
echo [2] OTCv4 - PayPal
echo [3] Neverlose.cc - PayPal/Skrill/more
echo [4] Fatality.win - PayPal/Skrill/more
echo [5] Nixware.cc - PayPal/Skrill/more
echo [6] Go back to start
set /p car=
if %car% == 1 goto otcskrill
if %car% == 2 goto otcpaypal
if %car% == 3 goto nl
if %car% == 4 goto ft
if %car% == 5 goto nix
if %car% == 6 goto start

:otcskrill
cls
Redirecting to OTCv4 Skrill reselling..
start https://discord.gg/VzgJsyU5
ping -n 5 localhost >nul
cls
goto :start

:otcpaypal
start https://discord.gg/t5pMHdmQ
ping -n 5 localhost >nul
cls
goto :start

:nl
start https://discord.gg/G5SNYbr8
ping -n 5 localhost >nul
cls
goto :start

:ft
start https://discord.gg/G5SNYbr8
ping -n 5 localhost >nul
cls
goto :start

:nix
start https://discord.gg/G5SNYbr8
ping -n 5 localhost >nul
cls
goto :start

:oldhvh
cls
echo Warning, before injecting cheats. Run legacy hvh first.
echo [1] jre.codes
echo [2] onecrack legacy
echo [3] How to download legacy hvh?
echo [4] Go back to start
set /p car=
if %car% == 1 goto zrekody
if %car% == 2 goto legacyot
if %car% == 3 goto leg
if %car% == 4 goto start

:zrekody
cls
echo Injecting jre.codes
%CD%\Resources\jrekody\Kirin.exe
exit

:legacyot
cls
echo Injecting onecrack legacy
%CD%\Resources\legacyot\Kirin.exe
exit

:leg
cls
start https://drive.google.com/u/0/uc?id=1z5rFdNVpue6fj3I1utQxZZwFcfrb7RXY&export=download
echo Download this, extract on desktop and run csgo.exe
echo If there is a error showing up restart steam completly then try again
echo [1] To go back
set /p car=
if %car% == 1 goto oldhvh