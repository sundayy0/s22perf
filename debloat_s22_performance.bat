@echo off
chcp 65001 >nul
title S22 Performance Debloat - by sundayyy
echo ======================================================================
echo    S22 PERFORMANCE DEBLOAT & OPTIMIZER (by sundayyy)
echo    Dispositivo alvo: Samsung Galaxy S22 (SM-S901E / Snapdragon)
echo ======================================================================
echo.
echo Verificando conexao com o aparelho...
adb devices
echo.
echo Pressione qualquer tecla para iniciar o debloat ou feche esta janela para cancelar.
pause >nul

echo.
echo [1/6] Removendo Barreiras de Desempenho e Throttling (GOS, FPS Adjuster)...
adb shell pm uninstall -k --user 0 com.samsung.android.game.gos
adb shell pm uninstall -k --user 0 com.samsung.android.game.gametools
adb shell pm uninstall -k --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall -k --user 0 com.sec.android.smartfpsadjuster
adb shell pm uninstall -k --user 0 com.samsung.gpuwatchapp

echo.
echo [2/6] Removendo Telemetria, Analytics e Daemons de Background...
adb shell pm uninstall -k --user 0 com.sec.android.diagmonagent
adb shell pm uninstall -k --user 0 com.samsung.android.rubin.app
adb shell pm uninstall -k --user 0 com.samsung.android.ipsgeofence
adb shell pm uninstall -k --user 0 com.samsung.android.dqagent
adb shell pm uninstall -k --user 0 com.samsung.android.scpm
adb shell pm uninstall -k --user 0 com.samsung.android.cidmanager
adb shell pm uninstall -k --user 0 com.samsung.android.knox.analytics.uploader
adb shell pm uninstall -k --user 0 com.sec.spp.push
adb shell pm uninstall -k --user 0 com.samsung.android.forest
adb shell pm uninstall -k --user 0 com.google.mainline.telemetry
adb shell pm uninstall -k --user 0 com.google.android.adservices.api
adb shell pm uninstall -k --user 0 com.google.mainline.adservices
adb shell pm uninstall -k --user 0 com.google.android.federatedcompute
adb shell pm uninstall -k --user 0 com.hiya.star
adb shell pm uninstall -k --user 0 com.samsung.android.privacydashboard
adb shell pm uninstall -k --user 0 com.samsung.android.mocca
adb shell pm uninstall -k --user 0 com.samsung.android.aware.service
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo.
echo [3/6] Desativando Daemons de Escuta de Voz e Assistentes...
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.wakeup
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent
adb shell pm uninstall -k --user 0 com.samsung.android.bixbyvision.framework
adb shell pm uninstall -k --user 0 com.samsung.android.visionintelligence
adb shell pm uninstall -k --user 0 com.samsung.android.app.spage
adb shell pm uninstall -k --user 0 com.samsung.android.smartsuggestions
adb shell pm uninstall -k --user 0 com.samsung.android.intellivoiceservice
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.xgoogle

echo.
echo [4/6] Removendo Bloatware de Terceiros e Stub Services...
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.services
adb shell pm uninstall -k --user 0 com.microsoft.appmanager
adb shell pm uninstall -k --user 0 com.microsoft.skydrive
adb shell pm uninstall -k --user 0 com.google.android.apps.bard
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.feedback
adb shell pm uninstall -k --user 0 com.mygalaxy.service

echo.
echo [5/6] Removendo Recursos Graficos Pesados e AR (Realidade Aumentada)...
adb shell pm uninstall -k --user 0 com.samsung.android.aremoji
adb shell pm uninstall -k --user 0 com.samsung.android.aremojieditor
adb shell pm uninstall -k --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
adb shell pm uninstall -k --user 0 com.sec.android.mimage.avatarstickers
adb shell pm uninstall -k --user 0 com.samsung.android.stickercenter
adb shell pm uninstall -k --user 0 com.google.ar.core
adb shell pm uninstall -k --user 0 com.samsung.android.dynamiclock
adb shell pm uninstall -k --user 0 com.google.android.apps.aiwallpapers

echo.
echo [6/6] Removendo Conectividade Passiva e Servicos Standby Desnecessarios...
adb shell pm uninstall -k --user 0 com.samsung.android.beaconmanager
adb shell pm uninstall -k --user 0 com.samsung.android.coldwalletservice
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall -k --user 0 com.samsung.android.app.parentalcare
adb shell pm uninstall -k --user 0 com.samsung.android.carkey
adb shell pm uninstall -k --user 0 com.samsung.android.dkey
adb shell pm uninstall -k --user 0 com.samsung.android.easysetup
adb shell pm uninstall -k --user 0 com.google.android.printservice.recommendation
adb shell pm uninstall -k --user 0 com.android.bips

echo.
echo ======================================================================
echo    DEBLOAT CONCLUIDO COM SUCESSO! (by sundayyy)
echo    Reinicie o aparelho para liberar a memoria e aplicar todas as alteracoes.
echo ======================================================================
pause
