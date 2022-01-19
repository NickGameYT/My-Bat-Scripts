@echo off
echo Developed by ngpyt 
echo https://github.com/NickGameYT/My-Bat-Scripts
echo version 0.0.1 
echo This utility was written in 15 minutes of my time by making several mistakes that cost restarting the PC.
echo But now everything is ok :)
echo .
echo .
echo Select a menu item:
echo 1 - Launch "Visual activation of Windows"
echo 2 - Launch "Visual deactivation of Windows"
echo 3 - Exit
set/p "activationmenu=>"
if %activationmenu%==1 goto ActivationON
if %activationmenu%==2 goto ActivationOFF
if %activationmenu%==3 goto END
goto END







:ActivationON
echo %PATH%|find "%WinDir%\system32;" /c
@set "hive=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation"
@reg Add "%hive%" /v Manual /t REG_DWORD /d 0 /f
echo Bro, here it is necessary to issue a reboot, I'm sorry if that.
shutdown.exe -s -f -t 15
pause
goto END


:ActivationON
echo %PATH%|find "%WinDir%\system32;" /c
@set "hive=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation"
@reg Add "%hive%" /v Manual /t REG_DWORD /d 1 /f
echo Bro, here it is necessary to issue a reboot, I'm sorry if that.
shutdown.exe -s -f -t 15
pause
goto END





:END