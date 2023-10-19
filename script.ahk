^!Space::Send  {Media_Play_Pause} 
^!Right::Send  {Media_Next}
^!Left::Send  {Media_Prev}

^!Up::
    SoundGet, volume 
    Send {Volume_Up}
    SoundSet, volume + 1
return

^!Down::
    SoundGet, volume 
    Send {Volume_Down}
    SoundSet, volume - 1
return

^!d::
    Run, "C:\Users\altam\OneDrive\Documents\dimmer_v2.0.0.b5\Dimmer.exe", c:\
    ;sleep 2000
    ;Send {Ctrl down}{Alt down}{Tab}{Alt up}{Ctrl up}{Enter}
return

^!c::
    Process, Close, Dimmer.exe
    sleep 350
    Run, "C:\Users\altam\Downloads\RefreshNotificationArea.exe", , Hide
return

#Space::
return

^!r::
    RunWait, "C:\Windows\System32\DisplaySwitch.exe" /extend
    sleep 4000
    Run, powercfg -s 9935e61f-1661-40c5-ae2f-8495027d5d5d
    sleep 2000
    Process,Close,ALsPowerSwitcher.exe
    sleep 1000
    Run, "C:\Users\altam\OneDrive\Documents\ALsPowerSwitcher\ALsPowerSwitcher.exe"
    sleep 1000
    Run, "C:\Users\altam\Downloads\RefreshNotificationArea.exe", , Hide
    sleep 1000
    Run, "C:\Program Files (x86)\Britton IT Ltd\CrewChiefV4\CrewChiefV4.exe"
    sleep 4000
    Run, "steam://open/bigpicture"
    sleep 7000
    Run, "steam://open/bigpicture"
    sleep 7000
    Run steam://rungameid/805550
return

^!e::
    Send !{f4}
    sleep 1000
    RunWait, "C:\Windows\System32\DisplaySwitch.exe" /internal
    sleep 4000
    Run, powercfg -s a1841308-3541-4fab-bc81-f71556f20b4a
    sleep 2000
    Process,Close,ALsPowerSwitcher.exe
    sleep 1000
    Process,Close,CrewChiefV4.exe
    sleep 1000
    Run, "C:\Users\altam\OneDrive\Documents\ALsPowerSwitcher\ALsPowerSwitcher.exe"
    sleep 1000
    Run, "C:\Users\altam\Downloads\RefreshNotificationArea.exe", , Hide
return

^!o::
    Run, powercfg -s a1841308-3541-4fab-bc81-f71556f20b4a
    sleep 500
    Process,Close,ALsPowerSwitcher.exe
    sleep 250
    Run, "C:\Users\altam\Downloads\RefreshNotificationArea.exe", , Hide
    sleep 250
    Run, "C:\Users\altam\OneDrive\Documents\ALsPowerSwitcher\ALsPowerSwitcher.exe"
return

^!p::
    Run, powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
    sleep 500
    Process,Close,ALsPowerSwitcher.exe
    sleep 250
    Run, "C:\Users\altam\Downloads\RefreshNotificationArea.exe", , Hide
    sleep 250
    Run, "C:\Users\altam\OneDrive\Documents\ALsPowerSwitcher\ALsPowerSwitcher.exe"
return
