@echo off
chcp 65001
mode con cols=40 lines=7
title Calculadora  /  made by Ngt
:calc
cls
echo ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo ┃             Calculadora              ┃
echo ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
echo ┃  1 - Soma          3 - Multiplicação ┃
echo ┃  2 - Subtração     4 - Divisão       ┃
echo ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
choice /c "1234" /n /M "Opção > "
if %errorlevel%==1 goto 1
if %errorlevel%==2 goto 2
if %errorlevel%==3 goto 3
if %errorlevel%==4 goto 4


:1
cls
set /p soma1="Digito 1 > "
set /p soma2="Digito 2 > "
echo.
set /a result1=%soma1%+%soma2%
echo.
echo %soma1% + %soma2% = %result1%
echo Aperte qualquer tecla para voltar.
pause > nul
goto calc


:2
cls
set /p sub1="Digito 1 > "
set /p sub2="Digito 2 > "
echo.
set /a result2=%sub1%-%sub2%
echo.
echo %sub1% - %sub2% = %result2%
echo.
pause
goto calc


:3
cls
set /p mult1="Digito 1 > "
set /p mult2="Digito 2 > "
echo.
set /a result3=%mult1%*%mult2%
echo %mult1% * %mult2% = %result3%
echo.
echo Aperte qualquer tecla para voltar.
pause > nul
goto calc

:4
cls
set /p div1="Digito 1 > "
set /p div2="Digito 2 > "
echo.
set /a result4=%div1%/%div2%
echo %div1% / %div2% = %result4%
echo.
echo Aperte qualquer tecla para voltar.
pause > nul
goto calc
