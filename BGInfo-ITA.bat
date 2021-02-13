@ECHO OFF
title BGInfo-ITA By Fabrizio Amorelli - BGInfo 4.28 By Mark Russinovich
color 1F

:menu
cls
ECHO __________  ________.___        _____       
ECHO \______   \/  _____/^|   ^| _____/ ____\____      ___ _____ _
ECHO  ^|    ^|  _/   \  ___^|   ^|/    \   __\/  _ \  __^|_ _^|_   _/_\
ECHO  ^|    ^|   ^\    \_\  \   ^|   ^|  ^\  ^| (  ^<_^> )^|___^| ^|  ^| ^|/ _ \
ECHO  ^|______  /\______  /___^|___^|  /__^|  ^\____/    ^|___^| ^|_/_/ \_\
ECHO         \/        \/         \/             
ECHO.
ECHO Menu':
ECHO.
ECHO 1 - Applica BGInfo
ECHO 2 - Modifica BGInfo
ECHO 3 - Modifica script avvio BGInfo
ECHO 4 - Avvio automatico (%username%)
ECHO 5 - Avvio automatico (All Users)
ECHO 6 - Visualizza Comandi
ECHO 7 - Visualiza EULA
ECHO 8 - Esci
ECHO.

set /p scelta= Digita il numero [1-8] o comando: || set scelta=NothingChosen

if '%scelta%'=='1' goto 1
if '%scelta%'=='2' goto 2
if '%scelta%'=='3' goto 3
if '%scelta%'=='4' goto 4
if '%scelta%'=='5' goto 5
if '%scelta%'=='6' goto 6
if '%scelta%'=='7' start "" "%~dp0\Eula.txt"
if '%scelta%'=='about' goto about
if '%scelta%'=='8' exit
if '%scelta%'=='exit' exit

goto menu

ECHO.

:1
cls
ECHO Seleziona lingua:
ECHO.
ECHO 1 - Italiano [IT_IT]
ECHO 2 - English  [EN_US]
ECHO 3 - Menu
ECHO.
set /p lingua= Digita il numero [1-3] o comando: || set lingua=NothingChosen

if '%lingua%'=='1' "%~dp0\Bginfo64.exe" "%~dp0\bgi\it.bgi" /timer:0 /nolicprompt
if '%lingua%'=='IT_IT' "%~dp0\Bginfo64.exe" "%~dp0\bgi\it.bgi" /timer:0 /nolicprompt
if '%lingua%'=='it_it' "%~dp0\Bginfo64.exe" "%~dp0\bgi\it.bgi" /timer:0 /nolicprompt
if '%lingua%'=='2' "%~dp0\Bginfo64.exe" "%~dp0\bgi\en.bgi" /timer:0 /nolicprompt
if '%lingua%'=='EN_US' "%~dp0\Bginfo64.exe" "%~dp0\bgi\en.bgi" /timer:0 /nolicprompt
if '%lingua%'=='en_us' "%~dp0\Bginfo64.exe" "%~dp0\bgi\en.bgi" /timer:0 /nolicprompt
if '%lingua%'=='3' goto menu
if '%lingua%'=='menu' goto menu
if '%lingua%'=='exit' exit

goto 1

:2
cls
ECHO Modifica lingua:
ECHO.
ECHO 1 - Italiano [IT_IT]
ECHO 2 - English  [EN_US]
ECHO 3 - Menu
ECHO.
set /p modifica= Digita il numero [1-3] o comando: || set modifica=NothingChosen

if '%modifica%'=='1' "%~dp0\Bginfo64.exe" "%~dp0\bgi\it.bgi" /timer:500 /nolicprompt
if '%modifica%'=='IT_IT' "%~dp0\Bginfo64.exe" "%~dp0\bgi\it.bgi" /timer:500 /nolicprompt
if '%modifica%'=='it_it' "%~dp0\Bginfo64.exe" "%~dp0\bgi\it.bgi" /timer:500 /nolicprompt
if '%modifica%'=='2' "%~dp0\Bginfo64.exe" "%~dp0\bgi\en.bgi" /timer:500 /nolicprompt
if '%modifica%'=='EN_US' "%~dp0\Bginfo64.exe" "%~dp0\bgi\en.bgi" /timer:500 /nolicprompt
if '%modifica%'=='en_us' "%~dp0\Bginfo64.exe" "%~dp0\bgi\en.bgi" /timer:500 /nolicprompt
if '%modifica%'=='3' goto menu
if '%modifica%'=='menu' goto menu
if '%modifica%'=='exit' exit

goto 2

:3
cls
ECHO Seleziona script lingua:
ECHO.
ECHO 1 - Italiano [IT_IT]
ECHO 2 - English  [EN_US]
ECHO 3 - Menu
ECHO.
set /p script= Digita il numero [1-3] o comando: || set script=NothingChosen

if '%script%'=='1' start "" notepad.exe "%~dp0\cmd\it.bat"
if '%script%'=='IT_IT' start "" notepad.exe "%~dp0\cmd\it.bat"
if '%script%'=='it_it' start "" notepad.exe "%~dp0\cmd\it.bat"
if '%script%'=='2' start "" notepad.exe "%~dp0\cmd\en.bat"
if '%script%'=='EN_US' start "" notepad.exe "%~dp0\cmd\en.bat"
if '%script%'=='en_us' start "" notepad.exe "%~dp0\cmd\en.bat"
if '%script%'=='3' goto menu
if '%script%'=='menu' goto menu
if '%script%'=='exit' exit

goto 3

:4
cls
ECHO Seleziona lingua avvio (%username%):
ECHO.
ECHO 1 - Italiano [IT_IT]
ECHO 2 - English  [EN_US]
ECHO 3 - Disattiva
ECHO 4 - Menu
ECHO.

call "%~dp0\user\checkuser.bat"
call "%~dp0\user\checkuser.bat"

if exist "C:\Program Files\BGInfo\cmd\%username%.txt" (
ECHO Lingua impostata: %lang4%
) else (
ECHO Nessuna lingua impostata
)

ECHO.

set /p autouser= Digita il numero [1-4] o comando: || set autouser=NothingChosen

if '%autouser%'=='1' echo Set WshShell = CreateObject("WScript.Shell") > "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\it.bat" ^& Chr(34), 0 >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo Set WshShell = Nothing >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo IT_IT > "C:\Program Files\BGInfo\cmd\%username%.txt" && set lang4=IT_IT
if '%autouser%'=='IT_IT' echo Set WshShell = CreateObject("WScript.Shell") > "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\it.bat" ^& Chr(34), 0 >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo Set WshShell = Nothing >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo IT_IT > "C:\Program Files\BGInfo\cmd\%username%.txt" && set lang4=IT_IT
if '%autouser%'=='it_it' echo Set WshShell = CreateObject("WScript.Shell") > "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\it.bat" ^& Chr(34), 0 >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo Set WshShell = Nothing >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo IT_IT > "C:\Program Files\BGInfo\cmd\%username%.txt" && set lang4=IT_IT
if '%autouser%'=='EN_US' echo Set WshShell = CreateObject("WScript.Shell") > "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\en.bat" ^& Chr(34), 0 >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo Set WshShell = Nothing >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo EN_US > "C:\Program Files\BGInfo\cmd\%username%.txt" && set lang4=EN_US
if '%autouser%'=='2' echo Set WshShell = CreateObject("WScript.Shell") > "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\en.bat" ^& Chr(34), 0 >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo Set WshShell = Nothing >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo EN_US > "C:\Program Files\BGInfo\cmd\%username%.txt" && set lang4=EN_US
if '%autouser%'=='en_us' echo Set WshShell = CreateObject("WScript.Shell") > "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\en.bat" ^& Chr(34), 0 >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo Set WshShell = Nothing >> "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && echo EN_US > "C:\Program Files\BGInfo\cmd\%username%.txt" && set lang4=EN_US
if '%autouser%'=='3' if exist "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" del "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Bginfo64.vbs" && if exist "C:\Program Files\BGInfo\cmd\%username%.txt" del "C:\Program Files\BGInfo\cmd\%username%.txt"
if '%autouser%'=='4' goto menu
if '%autouser%'=='menu' goto menu
if '%autouser%'=='exit' exit

goto 4

:5
cls
ECHO Seleziona lingua avvio (All Users):
ECHO.
ECHO 1 - Italiano [IT_IT]
ECHO 2 - English  [EN_US]
ECHO 3 - Disattiva
ECHO 4 - Menu
ECHO.

call "%~dp0\user\checkuserall.bat"
call "%~dp0\user\checkuserall.bat"

if exist "C:\Program Files\BGInfo\cmd\All.txt" (
ECHO Lingua impostata: %lang%
) else (
ECHO Nessuna lingua impostata
)

ECHO.

set /p autoall= Digita il numero [1-4] o comando: || set autoall=NothingChosen

if '%autoall%'=='1' echo Set WshShell = CreateObject("WScript.Shell") > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\it.bat" ^& Chr(34), 0 >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo Set WshShell = Nothing >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo IT_IT > "C:\Program Files\BGInfo\cmd\All.txt" && set lang=IT_IT
if '%autoall%'=='IT_IT' echo Set WshShell = CreateObject("WScript.Shell") > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\it.bat" ^& Chr(34), 0 >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo Set WshShell = Nothing >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo IT_IT > "C:\Program Files\BGInfo\cmd\All.txt" && set lang=IT_IT
if '%autoall%'=='it_it' echo Set WshShell = CreateObject("WScript.Shell") > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\it.bat" ^& Chr(34), 0 >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo Set WshShell = Nothing >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo IT_IT > "C:\Program Files\BGInfo\cmd\All.txt" && set lang=IT_IT
if '%autoall%'=='EN_US' echo Set WshShell = CreateObject("WScript.Shell") > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\en.bat" ^& Chr(34), 0 >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo Set WshShell = Nothing >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo EN_US > "C:\Program Files\BGInfo\cmd\All.txt" && set lang=EN_US
if '%autoall%'=='2' echo Set WshShell = CreateObject("WScript.Shell") > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\en.bat" ^& Chr(34), 0 >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo Set WshShell = Nothing >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo EN_US > "C:\Program Files\BGInfo\cmd\All.txt" && set lang=EN_US
if '%autoall%'=='en_us' echo Set WshShell = CreateObject("WScript.Shell") > "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo WshShell.Run chr(34) ^& "C:\Program Files\BGInfo\cmd\en.bat" ^& Chr(34), 0 >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo Set WshShell = Nothing >> "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && echo EN_US > "C:\Program Files\BGInfo\cmd\All.txt" && set lang=EN_US
if '%autoall%'=='3' if exist "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Bginfo64.vbs" && if exist "C:\Program Files\BGInfo\cmd\All.txt" del "C:\Program Files\BGInfo\cmd\All.txt"
if '%autoall%'=='4' goto menu
if '%autoall%'=='menu' goto menu
if '%autoall%'=='exit' exit

goto 5

:6
cls
ECHO Sinstassi di bginfo
ECHO.
ECHO BGInfo64.exe [file_configurazione.bgi] [parametri]
ECHO.
ECHO Lista comandi:
ECHO.
ECHO /TIMER:nn      - Timer in secondi prima dell'applicazione della configurazione
ECHO /POPUP         - Mostra le informazioni in una finestra popup separata
ECHO /TASKBAR       - Inserisci una icona nell'area di stato della barra delle app
ECHO /ALL           - Aggiorna lo sfondo per tutti gli utenti loggati
ECHO /LOG:^<path^>    - Scrivi gli avvisi ed errori in un file di log
ECHO /SILENT        - Non segnalare errori
ECHO /RTF:^<path^>    - Scrivi il testo di BGInfo in un file rtf
ECHO /NOLICPROMPT   - Salta il consenso EULA
ECHO.
ECHO Esempio:
ECHO.
ECHO bginfo64 C:\temp\config.bgi /TIMER:0
ECHO.
pause

goto menu

:about
cls
ECHO BGInfo-ITA
ECHO.
ECHO Versione: 1.0
ECHO Anno: 2021
ECHO Released By: Fabrizio Amorelli
ECHO https://github.com/Fabrizio04/BGInfo-ITA
ECHO.
ECHO Basato su BGInfo 4.28 By Mark Russinovich
ECHO https://docs.microsoft.com/en-us/sysinternals/downloads/bginfo
ECHO.

pause

goto menu
