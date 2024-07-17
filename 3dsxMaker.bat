@echo off
echo Welcome to 3DSX Compilation Script

:menu
echo.
echo Select an option:
echo 1. Make Icon
echo 2. Make Banner
echo 3. Set RSF
echo 4. Compile 3DSX
echo 5. Exit

set /p choice="Enter your choice: "

if "%choice%"=="1" (
    set /p icon="Enter icon filename (without extension): "
    makeicon -f icn/%icon%.png -o icon.icn
    goto menu
) else if "%choice%"=="2" (
    set /p banner="Enter banner filename (without extension): "
    bannertool makebanner -i ban/%banner%.png -o banner.bnr
    goto menu
) else if "%choice%"=="3" (
    set /p rsf="Enter RSF filename (without extension): "
    makerom -f rsf/%rsf%.rsf -o rsf.rsf
    goto menu
) else if "%choice%"=="4" (
    3dsxtool -c build/HyruleBrowser.elf -o build/HyruleBrowser.3dsx
    goto menu
) else if "%choice%"=="5" (
    echo Exiting...
    exit /b
) else (
    echo Invalid choice. Please try again.
    goto menu
)
