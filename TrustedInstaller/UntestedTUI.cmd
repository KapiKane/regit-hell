@echo off
title TrustedInstaller

echo  ______   ______     __  __     ______     ______   ______     _____     __     __   __     ______     ______   ______     __         __         ______     ______    
echo /\__  _\ /\  == \   /\ \/\ \   /\  ___\   /\__  _\ /\  ___\   /\  __-.  /\ \   /\ "-.\ \   /\  ___\   /\__  _\ /\  __ \   /\ \       /\ \       /\  ___\   /\  == \   
echo \/_/\ \/ \ \  __<   \ \ \_\ \  \ \___  \  \/_/\ \/ \ \  __\   \ \ \/\ \ \ \ \  \ \ \-.  \  \ \___  \  \/_/\ \/ \ \  __ \  \ \ \____  \ \ \____  \ \  __\   \ \  __<   
echo    \ \_\  \ \_\ \_\  \ \_____\  \/\_____\    \ \_\  \ \_____\  \ \____-  \ \_\  \ \_\\"\_\  \/\_____\    \ \_\  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_\ \_\ 
echo     \/_/   \/_/ /_/   \/_____/   \/_____/     \/_/   \/_____/   \/____/   \/_/   \/_/ \/_/   \/_____/     \/_/   \/_/\/_/   \/_____/   \/_____/   \/_____/   \/_/ /_/ 

set /p enable="Do you want to enable TrustedInstaller? (Y/n): "

:a
if /I "%enable%"=="Y" (
    start TrustedInstaller/GainTrustInstaller.reg
    echo "TrustedInstaller enabled."
) else if /I "%enable%"=="N" (
    start regit-hell/TrustedInstaller/RemoveTrustInstaller.reg
    echo "TrustedInstaller disabled."
) else (
    echo "No proper input. Try again."
    set /p enable="Do you want to enable TrustedInstaller? (Y/n): "
    goto a
)
