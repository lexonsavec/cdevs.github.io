@echo off
@mode con lines=5 cols=57
color 2f
title Compalex cleaner - nettoyage
timeout /t 3 /nobreak >nul
title Compalex cleaner
:start
@mode con lines=5 cols=57
color cf
cls
del /q %windir%\temp\
del /q %temp%
cls
echo Votre ordinateur est pret !
color 2f
timeout /t 6 /nobreak >nul
if errorlevel 215 goto:repair
goto:start
:repair
color cf
echo Réparation
del /q %windir%\temp\ >nul
del /q %temp% >nul
color 2f
goto:start
