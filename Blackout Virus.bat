@echo off

:display_message
echo You've been hacked by The Pro Cyber Hatcher!
echo To prevent this script from running again. Contact Cyber Hatcher or press n to exit
timeout /t 1 /nobreak >nul

:wait_for_input
>nul 2>nul set /p "=."
timeout /t 1 /nobreak >nul

if exist "%temp%\stop_hack.txt" (
    del "%temp%\stop_hack.txt" >nul
    echo Exiting...
    timeout /t 3 >nul
    exit
)

>nul 2>nul set /p "key="
if /I "%key%"=="n" (
    echo Exiting...
    timeout /t 3 >nul
    exit
)

if /I "%key%"=="m" (
    echo. > "%temp%\stop_hack.txt"
    echo You've stopped the script from running again. Press any key to exit.
    pause >nul
    exit
)

goto wait_for_input
