@echo off
echo Computador: %computername%
echo.
echo 1) Salvar lista de usuarios do equipamento e seus papeis.
echo 2) Salvar Lista de Diretorios contidos na raiz.
echo 3) Salvar a lista de processos em execucao no momento
echo 4) Gerar um relatorio CSV
echo 5) Desligar o equipamento

set /p "escolha=Digite sua opcao: "

IF NOT EXIST relatorios ( mkdir relatorios )
cd relatorios

if %escolha% == 1 goto :Userlist
if %escolha% == 2 goto :Dir
if %escolha% == 3 goto :Tasks
if %escolha% == 4 goto :Csv
if %escolha% == 5 goto :Userlist

:userlist
echo %date% - %TIME% > %computername%-userslist.txt
net user >> %computername%-userslist.txt
echo.
echo Arquivo %computername%-userslist.txt gerado com sucesso
goto Fim

:Dir
echo %date% - %TIME% > %computername%-dirlist.txt
dir C:\ >> %computername%-dirlist.txt
echo.
echo Arquivo %computername%-dirlist.txt gerado com sucesso
goto Fim


:Tasks
echo %date% - %TIME% > %computername%-pslist.txt
tasklist >> %computername%-pslist.txt
echo.
echo Arquivo %computername%-pslist.txt gerado com sucesso
goto Fim

:Csv
IF NOT EXIST computadores.csv (echo Nome ;Dominio de Logon ;Usuario Atual ;Diretorio Raiz ;Processador ;Arquitetura ;Numero de Processadores ;Diretorio do Windows >> computadores.csv)
echo %computername% ;%LOGONSERVER% ;%username% ;%HOMEDRIVE% ;%PROCESSOR_IDENTIFIER% ;%PROCESSOR_ARCHITECTURE% ;%NUMBER_OF_PROCESSORS% ;%WINDIR% >> computadores.csv
echo.
echo Arquivo CSV gerado com sucesso
goto Fim

:Power
shutdown /s /t 100

:Fim
cd..
timeout /t 10
