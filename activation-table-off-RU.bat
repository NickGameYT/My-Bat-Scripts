@echo off
echo ���ࠡ�⠭� ngpyt 
echo https://github.com/NickGameYT/My-Bat-Scripts
echo version 0.0.1 
echo ������ �⨫�� �뫠 ����ᠭ� �� 15 ����� ����� �६��� ��⥬ ��᪮�쪨� �訡�� ����� �⮨�� ��१���㧪� ��.
echo �� ᥩ�� �� ��:)
echo .
echo .
echo �롥�� �㭪� ����:
echo 1 - �������� "���㠫��� ��⨢��� Windows"
echo 2 - �������� "���㠫��� ����⨢��� Windows"
echo 3 - ��室
set/p "activationmenu=>"
if %activationmenu%==1 goto ActivationON
if %activationmenu%==2 goto ActivationOFF
if %activationmenu%==3 goto END
goto END







:ActivationON
echo %PATH%|find "%WinDir%\system32;" /c
@set "hive=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation"
@reg Add "%hive%" /v Manual /t REG_DWORD /d 0 /f
echo ��, ��� ���� ��ନ�� ��१���㧮�� ���� �᫨ ��.
shutdown.exe -s -f -t 15
pause
goto END


:ActivationON
echo %PATH%|find "%WinDir%\system32;" /c
@set "hive=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform\Activation"
@reg Add "%hive%" /v Manual /t REG_DWORD /d 1 /f
echo ��, ��� ���� ��ନ�� ��१���㧮�� ���� �᫨ ��.
shutdown.exe -s -f -t 15
pause
goto END





:END