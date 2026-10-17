@echo off
chcp 65001 >nul
title Restaurar Pacotes - by sundayyy
echo ======================================================================
echo    RESTAURAR PACOTES / ROLLBACK (by sundayyy)
echo    Dispositivo alvo: Samsung Galaxy S22 (SM-S901E)
echo ======================================================================
echo Este script restaura todos os pacotes removidos de volta ao perfil do usuario.
echo.
pause

echo Restaurando barreiras de desempenho/GOS...
adb shell pm install-existing --user 0 com.samsung.android.game.gos
adb shell pm install-existing --user 0 com.samsung.android.game.gametools
adb shell pm install-existing --user 0 com.samsung.android.game.gamehome
adb shell pm install-existing --user 0 com.sec.android.smartfpsadjuster
adb shell pm install-existing --user 0 com.samsung.gpuwatchapp

echo Restaurando telemetria e daemons...
adb shell pm install-existing --user 0 com.sec.android.diagmonagent
adb shell pm install-existing --user 0 com.samsung.android.rubin.app
adb shell pm install-existing --user 0 com.samsung.android.ipsgeofence
adb shell pm install-existing --user 0 com.samsung.android.dqagent
adb shell pm install-existing --user 0 com.samsung.android.scpm
adb shell pm install-existing --user 0 com.samsung.android.cidmanager
adb shell pm install-existing --user 0 com.samsung.android.knox.analytics.uploader
adb shell pm install-existing --user 0 com.sec.spp.push
adb shell pm install-existing --user 0 com.samsung.android.forest
adb shell pm install-existing --user 0 com.google.mainline.telemetry
adb shell pm install-existing --user 0 com.google.android.adservices.api
adb shell pm install-existing --user 0 com.google.mainline.adservices
adb shell pm install-existing --user 0 com.google.android.federatedcompute
adb shell pm install-existing --user 0 com.hiya.star
adb shell pm install-existing --user 0 com.samsung.android.privacydashboard
adb shell pm install-existing --user 0 com.samsung.android.mocca
adb shell pm install-existing --user 0 com.samsung.android.aware.service
adb shell pm install-existing --user 0 com.samsung.android.mapsagent

echo Restaurando Bixby e assistentes...
adb shell pm install-existing --user 0 com.samsung.android.bixby.wakeup
adb shell pm install-existing --user 0 com.samsung.android.bixby.agent
adb shell pm install-existing --user 0 com.samsung.android.bixbyvision.framework
adb shell pm install-existing --user 0 com.samsung.android.visionintelligence
adb shell pm install-existing --user 0 com.samsung.android.app.spage
adb shell pm install-existing --user 0 com.samsung.android.smartsuggestions
adb shell pm install-existing --user 0 com.samsung.android.intellivoiceservice
adb shell pm install-existing --user 0 com.android.hotwordenrollment.okgoogle
adb shell pm install-existing --user 0 com.android.hotwordenrollment.xgoogle

echo Restaurando apps e stubs...
adb shell pm install-existing --user 0 com.facebook.appmanager
adb shell pm install-existing --user 0 com.facebook.system
adb shell pm install-existing --user 0 com.facebook.services
adb shell pm install-existing --user 0 com.microsoft.appmanager
adb shell pm install-existing --user 0 com.microsoft.skydrive
adb shell pm install-existing --user 0 com.google.android.apps.bard
adb shell pm install-existing --user 0 com.google.android.apps.tachyon
adb shell pm install-existing --user 0 com.google.android.feedback
adb shell pm install-existing --user 0 com.mygalaxy.service

echo Restaurando AR e customizacoes...
adb shell pm install-existing --user 0 com.samsung.android.aremoji
adb shell pm install-existing --user 0 com.samsung.android.aremojieditor
adb shell pm install-existing --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload
adb shell pm install-existing --user 0 com.sec.android.mimage.avatarstickers
adb shell pm install-existing --user 0 com.samsung.android.stickercenter
adb shell pm install-existing --user 0 com.google.ar.core
adb shell pm install-existing --user 0 com.samsung.android.dynamiclock
adb shell pm install-existing --user 0 com.google.android.apps.aiwallpapers

echo Restaurando conectividade e outros servicos...
adb shell pm install-existing --user 0 com.samsung.android.beaconmanager
adb shell pm install-existing --user 0 com.samsung.android.coldwalletservice
adb shell pm install-existing --user 0 com.samsung.android.kidsinstaller
adb shell pm install-existing --user 0 com.samsung.android.app.parentalcare
adb shell pm install-existing --user 0 com.samsung.android.carkey
adb shell pm install-existing --user 0 com.samsung.android.dkey
adb shell pm install-existing --user 0 com.samsung.android.easysetup
adb shell pm install-existing --user 0 com.google.android.printservice.recommendation
adb shell pm install-existing --user 0 com.android.bips

echo.
echo ======================================================================
echo    RESTAURACAO CONCLUIDA COM SUCESSO! (by sundayyy)
echo ======================================================================
pause
