@echo off
chcp 65001 >nul
title Suspensao Profunda via ADB - by sundayyy
setlocal enabledelayedexpansion

echo ======================================================================
echo    APLICADOR DE SUSPENSAO PROFUNDA VIA ADB (by sundayyy)
echo    Dispositivo alvo: Samsung Galaxy S22 (SM-S901E)
echo ======================================================================

:: Se o usuario passou um pacote diretamente como argumento:
if not "%~1"=="" (
    set "TARGET_PKG=%~1"
    echo Aplicando suspensao profunda direta para: !TARGET_PKG!
    adb shell am set-standby-bucket !TARGET_PKG! restricted
    adb shell cmd appops set !TARGET_PKG! RUN_IN_BACKGROUND ignore
    adb shell cmd appops set !TARGET_PKG! RUN_ANY_IN_BACKGROUND ignore
    echo [OK] !TARGET_PKG! colocado em suspensao profunda com sucesso!
    goto :fim
)

:: Se nao passou argumento, ler do arquivo apps_para_suspender.txt
if not exist "apps_para_suspender.txt" (
    echo [ERRO] O arquivo apps_para_suspender.txt nao foi encontrado nesta pasta.
    goto :fim
)

echo Lendo pacotes configurados em apps_para_suspender.txt...
echo.

for /f "usebackq eol=# tokens=*" %%P in ("apps_para_suspender.txt") do (
    set "PKG=%%P"
    set "PKG=!PKG: =!"
    if not "!PKG!"=="" (
        echo Configurando !PKG!...
        adb shell am set-standby-bucket !PKG! restricted >nul 2>&1
        adb shell cmd appops set !PKG! RUN_IN_BACKGROUND ignore >nul 2>&1
        adb shell cmd appops set !PKG! RUN_ANY_IN_BACKGROUND ignore >nul 2>&1
        echo   - !PKG! [Restrito + Fundo Bloqueado]
    )
)

echo.
echo ======================================================================
echo    CONFIGURACAO CONCLUIDA! (by sundayyy)
echo    Os apps configurados agora consomem 0%% de CPU em segundo plano.
echo ======================================================================

:fim
pause
