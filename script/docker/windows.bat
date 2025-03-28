@echo off
setlocal

echo [INFO] Docker Desktop installer をダウンロードしています...

:: 一時フォルダにインストーラーを保存
set "INSTALLER_PATH=%TEMP%\DockerDesktopInstaller.exe"
curl -L -o "%INSTALLER_PATH%" "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe"

if exist "%INSTALLER_PATH%" (
    echo [INFO] ダウンロード成功: %INSTALLER_PATH%
) else (
    echo [ERROR] インストーラーのダウンロードに失敗しました。
    exit /b 1
)

echo [INFO] Docker Desktop をサイレントインストール中...
start /wait "" "%INSTALLER_PATH%" install --quiet

if %ERRORLEVEL% EQU 0 (
    echo [SUCCESS] Docker Desktop のインストールが完了しました。
) else (
    echo [ERROR] インストール中にエラーが発生しました。コード: %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)

echo [INFO] 一時ファイルを削除中...
del /f "%INSTALLER_PATH%"

echo [INFO] 完了。Docker Desktop をスタートメニューから起動してください。
endlocal
pause
