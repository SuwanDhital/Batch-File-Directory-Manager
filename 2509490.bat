@echo off

rem It let us to use !variable! to get updated value of variables inside loops and if statements.
setlocal enabledelayedexpansion

rem Set the value of currentDirectory in default
set "currentDirectory=%cd%"

:mainMenu
cls

rem Display the directory structure
call :printTree  
echo ===========================
echo      Main Menu
echo ===========================
echo 1. Create a new directory
echo 2. Create a new file
echo 3. Rename a file
echo 4. Enter into the directory
echo 5. Exit
echo ===========================
rem  Ask the user to enter their choice
set /p userChoice="Select an option (1-5): "  

rem Check users choice and call the function
if "%userChoice%"=="1" (
    rem Call function that create new directory
    call :createDirectory  
) else if "%userChoice%"=="2" (
    rem Call function that create new file
    call :createFile  
) else if "%userChoice%"=="3" (
    rem Call function that rename a file
    call :renameFile  
) else if "%userChoice%"=="4" (
    rem Call function that takes you to entered directory
    call :enterDirectory  
) else if "%userChoice%"=="5" (
    rem Terminate whole program
    exit  
) else (
    rem print error if it input is out of the context
    echo Invalid choice. Please try again.  
    pause
    rem Takes you to main menu
    goto mainMenu  
)

rem Return to main menu
goto mainMenu  

:createDirectory
rem Ask the user for name of new directory
set /p newDirectoryName="New directory name: "  
rem Try to create the directory
mkdir "!currentDirectory!\!newDirectoryName!" 2>nul  
if errorlevel 1 (
    rem print error if it fails
    echo Failed to create directory or it's already there.  
) else (
    rem print success
    echo Directory created successfully.  
)
pause

rem Return to the main menu
goto mainMenu  

:createFile
rem Ask user to enter the file name
set /p fileName="Enter the name of the file to create (e.g., file.txt): "  
if "!fileName!"=="" (
    rem Check if the name is empty
    echo File name cannot be empty.  
    pause
    rem Ask user for the file name again
    goto createFile  
)

rem Create the file with user entered filename
echo. > "!currentDirectory!\!fileName!"  
if errorlevel 1 (
    rem print message if file creation fails
    echo Failed to create file.  
) else (
    rem print success
    echo File created successfully.  
)
pause

rem Return to the main menu
goto mainMenu  

:renameFile
rem Ask user to enter the filename to rename
set /p fileToRename="Enter the name of the file to rename: "  
if exist "!currentDirectory!\!fileToRename!" (
    rem Ask user for new file name
    set /p newFileName="Enter the new name for the file: "  
    rem Try to rename the file
    ren "!currentDirectory!\!fileToRename!" "!newFileName!" 2>nul  
    if errorlevel 1 (
        rem print message if it fails
        echo Failed to rename file.  
    ) else (
        rem print success
        echo File renamed successfully.  
    )
) else (
    rem print message if the file does not exist
    echo File not found.  
)
pause

rem Return to the main menu
goto mainMenu  

:enterDirectory

rem Ask user for the directory path
set /p directoryToMove="Enter directory: "  
if exist "!directoryToMove!" (
    rem Go to the specified directory
    cd "!directoryToMove!" 
    rem Update current directory variable 
    set "currentDirectory=!cd!"  
    rem message the user about new current directory
    echo You are now in: !currentDirectory!  
) else (
    rem print error message to user if the directory does not exist
    echo Directory does not exist.  
)
pause

rem Return to the main menu
goto mainMenu  

:printTree
echo.  
echo Current Directory Structure:  
rem Display the tree
tree "%currentDirectory%" /f 
echo.
pause
rem  End of the script
goto :eof  