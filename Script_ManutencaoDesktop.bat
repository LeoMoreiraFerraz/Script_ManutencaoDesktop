@echo off
cls
:menu
cls
color 0a

date /t
echo.

echo Computador: %computername%        Usuario: %username%
echo.

echo Desenvolvido por Leonardo Moreira e Caio Xavier
                   
echo            	MENU DE TAREFAS
echo.
echo  ==================================
echo  1. Verificacao e correcao de erros no disco            
echo  2. Verificacao e reparo de arquivos temporarios    (Necessita usuário privilegiado)    
echo  3. Limpeza de arquivos temporarios		 (Necessita usuário privilegiado)
echo  4. Limpeza do cache de atualizacoes do Windows         
echo  5. Limpeza do cache de miniatura	
echo  6. Limpeza do cache de icones    
echo  7. Limpeza do cache de DNS       
echo  8. Limpeza do cache de memoria     
echo  9. Sair  
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9

:opcao1
cls
chkdsk C: /f /r
echo ==================================
echo *     Verificacao concluida          *
echo ==================================
pause
goto menu

:opcao2
cls
sfc /scannow
echo ==================================
echo *     Verificacao concluida           *
echo ==================================
pause
goto menu

:opcao3
cls
del /q /s %temp%\*
echo ==================================
echo *    Limpeza concluida         *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
del /q /s "C:\Windows\SoftwareDistribution\Download\*"
echo =====================================
echo *     Limpeza concluida            *
echo =====================================
pause
goto menu

:opcao5
cls
del /q /s "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"
echo =====================================
echo *     Limpeza concluida           *
echo =====================================
pause
goto menu

:opcao6
cls
del /q /s "%userprofile%\AppData\Local\IconCache.db"
echo =====================================
echo *     Limpeza concluida           *
echo =====================================
pause
goto menu

:opcao7
cls
ipconfig /flushdns
del /q /s "%userprofile%\AppData\Local\IconCache.db"
echo =====================================
echo *     Limpeza concluida           *
echo =====================================
pause
goto menu

:opcao8
cls
start /wait %windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
echo =====================================
echo *     Limpeza concluida           *
echo =====================================
pause
goto menu

:opcao9
:end
echo Finalizando programa ... 
pause
