  
@echo off
chcp 65001
echo.
pushd %~dp0


%SYSTEMROOT%\py.exe --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO attempt
%SYSTEMROOT%\py.exe -3 Nitrosniper.py
PAUSE
GOTO end


:attempt
py.exe --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO lastattempt
py.exe -3 Nitrosniper.py
PAUSE
GOTO end


:lastattempt
python.exe --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO message
python.exe Nitrosniper.py
GOTO end

:message
echo failed
echo variable.
PAUSE
