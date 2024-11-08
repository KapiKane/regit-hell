@echo off
title TrustedInstaller

echo  __  __     ______   _____     ______     ______   ______     ______    
echo /\ \/\ \   /\  == \ /\  __-.  /\  __ \   /\__  _\ /\  ___\   /\  == \   
echo \ \ \_\ \  \ \  _-/ \ \ \/\ \ \ \  __ \  \/_/\ \/ \ \  __\   \ \  __<   
echo  \ \_____\  \ \_\    \ \____-  \ \_\ \_\    \ \_\  \ \_____\  \ \_\ \_\ 
echo   \/_____/   \/_/     \/____/   \/_/\/_/     \/_/   \/_____/   \/_/ /_/ 
                                                                         

set /p enable="Do you want to enable Updates?? (Y/n): "

:a
if /I "%enable%"=="Y" || "%enable%"=="y" (
    start EnablingUpdates/Enable Updates.reg
    echo "TrustedInstaller enabled."
) else if /I "%enable%"=="N" || "%enable%"=="n" (
    start EnablingUpdates/Disable Updates.reg
    echo "TrustedInstaller disabled."
) else (
    echo "No proper input. Try again."
    set /p enable="Do you want to enable TrustedInstaller? (Y/n): "
    goto a
)
