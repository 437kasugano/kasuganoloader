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
title KasuganoLoader 1.8
goto Menu

:Menu
echo Hello %username%!
echo Select what you want
echo Please, do not select higher numbers than displayed, the loader might act weird!
echo [1] OTCv3 + new models [NOT WORKING]
echo [2] Osiris
echo [3] Weave 2.5
echo [4] RaweTrip
echo [5] Nixware CRACK [NOT WORKING]
echo [6] OTCv2
echo [7] Exit the loader
set /p car=
if %car% == 1 goto otc
if %car% == 2 goto osiris
if %car% == 3 goto weave
if %car% == 4 goto rawetrip
if %car% == 5 goto nixwarecrack
if %car% == 6 goto otc2
if %car% == 7 goto close
:otc
cls
echo Injecting OTCv3 + new models
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
echo Injecting Weave 2.5
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\weave25\Kirin.exe
exit

:rawetrip
cls
echo Injecting RaweTrip
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\rawetrip\Kirin.exe
exit

:close
cls
echo See you next time!
ping -n 3 localhost >nul
exit

:otc2
cls
echo Injecting OTCv2
start steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\ot2\Kirin.exe
exit

:nixwarecrack
cls
echo Injecting Nixware CRACK
START steam://rungameid/730
ping -n 40 localhost >nul
%CD%\Resources\nix\nixcrackloader.exe
exit