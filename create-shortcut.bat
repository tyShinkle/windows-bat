@echo off

set URL=%1%
set SHORTCUT_NAME="%USERPROFILE%\Desktop\%2%.url"
 
if "%URL%"=="" ( 
	echo URL not specified. 
	exit /b 1
)

if exist %SHORTCUT_NAME% (
	echo Shortcut with same name exists!
	pause
	exit /b 0
)

if "%SHORTCUT_NAME%"=="" (
	set SHORTCUTNAME="%USERPROFILE%\Desktop\shortcut.url"
)

echo Creating internet shortcut to "%URL%" named %SHORTCUT_NAME%...
echo [InternetShortcut] >> "%SHORTCUT_NAME%"
echo URL = "%URL%" >> "%SHORTCUT_NAME%

if %ERRORLEVEL% EQU 0 (
	echo Shortcut created!!
) else (
	echo Failed to create shortcut! Error Level = %ERRORLEVEL%
)

pause
