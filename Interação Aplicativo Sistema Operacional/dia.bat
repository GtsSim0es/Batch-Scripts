@echo off

:inicio
diasemana

if %errorlevel%==1 goto :domingo
if %errorlevel%==2 goto :segunda
if %errorlevel%==3 goto :terca
if %errorlevel%==4 goto :quarta
if %errorlevel%==5 goto :quinta
if %errorlevel%==6 goto :sexta
if %errorlevel%==7 goto :sabado

:domingo
echo.
echo.
echo Seu dia: domingo
echo.
echo.
goto :fim

:segunda
echo.
echo.
echo Seu dia: segunda-feira
echo.
echo.
goto :fim

:terca
echo.
echo.
echo Seu dia: terca-feira
echo.
echo.
goto :fim

:quarta
echo.
echo.
echo Seu dia: quarta-feira
echo.
echo.
goto :fim

:quinta
echo.
echo.
echo Seu dia: quinta-feira
echo.
echo.
goto :fim

:sexta
echo.
echo.
echo Seu dia: sexta-feira
echo.
echo.
goto :fim

:sabado
echo.
echo.
echo Seu dia: sabado
echo.
echo.
goto :fim

:fim
timeout /t 10

