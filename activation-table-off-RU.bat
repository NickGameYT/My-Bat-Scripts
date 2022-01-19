@echo off
echo Разработано ngpyt 
echo https://github.com/NickGameYT/My-Bat-Scripts
echo version 0.0.1 
echo Данная утилита была написана за 15 минут моего времени путем нескольких ошибок которые стоили перезагрузки пк.
echo Но сейчас все ок:)
echo .
echo .
echo Выберите пункт меню:
echo 1 - Запустить "Визуальную активацию Windows"
echo 2 - Запустить "Визуальную деактивацию Windows"
echo 3 - Выход
set/p "activationmenu=>"
if %activationmenu%==1 goto ActivationON
if %activationmenu%==2 goto ActivationOFF
if %activationmenu%==3 goto END
goto END







:ActivationON
echo %PATH%|find "%WinDir%\system32;" /c
@set "hive=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation"
@reg Add "%hive%" /v Manual /t REG_DWORD /d 0 /f
echo Бро, тут надо оформить перезагрузочку прости если что.
shutdown.exe -s -f -t 15
pause
goto END


:ActivationON
echo %PATH%|find "%WinDir%\system32;" /c
@set "hive=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation"
@reg Add "%hive%" /v Manual /t REG_DWORD /d 1 /f
echo Бро, тут надо оформить перезагрузочку прости если что.
shutdown.exe -s -f -t 15
pause
goto END





:END