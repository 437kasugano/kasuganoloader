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

@echo off
title CheatLoader by 437Kasugano#0437
goto Menu

:Menu
echo Hello %username%!
echo Enter the number of your cheat
echo [1] OTCv3 + new models
echo [2] Osiris
echo [3] Weave 2.5
echo [4] RaweTrip
set /p car=
if %car% == 1 goto otc
if %car% == 2 goto osiris
if %car% == 3 goto weave
if %car% == 4 goto rawetrip

:otc
cls
echo Injecting OTCv3 + new models + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 20 localhost >nul
%CD%\Resources\agents\Kirin.exe
%CD%\Resources\otcv3\Kirin.exe
exit

:osiris
cls
echo Injecting Osiris + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 20 localhost >nul
%CD%\Resources\osiris\Kirin.exe
exit

:weave
cls
echo Injecting Weave 2.5 + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 20 localhost >nul
%CD%\Resources\weave25\Kirin.exe
exit

:rawetrip
cls
echo Injecting RaweTrip + VAC Bypass
taskkill /f /im csgo.exe
%CD%\Resources\vacbypassloader\VAC-Bypass-Loader.exe
START steam://rungameid/730
ping -n 20 localhost >nul
%CD%\Resources\rawetrip\Kirin.exe
exit