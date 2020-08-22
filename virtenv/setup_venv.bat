@echo off
SETLOCAL

set "venv=%1"
if "%venv%" == "" ( set "venv=py38dev" )

IF EXIST "%venv%" (
    echo "Entering virtual environment %venv%"
    echo "use deactivate to leave"
    cmd /k "%venv%\Scripts\activate.bat"

) ELSE (
    echo "Creating virtual environment %venv%"
    tox -c tox_dev.ini
    echo "Entering virtual environment %venv%"
    echo "use deactivate to leave"
    cmd /k "%venv%\Scripts\activate.bat"
)

ENDLOCAL
