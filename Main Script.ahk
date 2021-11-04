;Starup Script Lines(No Returns)
#SingleInstance, Force
#MaxMem, 2
#MaxHotkeysPerInterval, 100

;;Menu Lines
Menu, Tray, NoStandard
Menu, Tray, Add, Run As Admin, RunAsAdmin
Menu, Tray, Add, Reload, Reload
Menu, Tray, Add, Off/On, Off/On
Menu, Tray, Add, Exit, Exit
Menu, Tray, Tip, Main
Menu, Tray, Icon,,,
If (A_IsAdmin = 0)
{
	MsgBox, 4, Assistant, Do you want to run program as Admin?,
	IfMsgBox, No
	{
		Return
	}
	Run, Admin2.bat
}
CopyPaste := 0
Loop
{
	;Groups
	CapslockTrue := GetKeyState("Capslock", "T")
	NumpadTrue := GetKeyState("NumLock", "T")
	ShiftTrue := GetKeyState("Shift", "P")
	;MouseGetPos, Xmouse, YMouse, WMouse, CMouse, 0
	;Function
	Sleep, 100
}

;Menu Functions

Off/On:
Suspend, Toggle
return

Reload:
SplashTextOn,,, Script Is Reloaded
Sleep, 1000
SplashTextOff
Reload
Return

Exit:
ExitApp
Return

RunAsAdmin:
Run, Admin2.bat

;Capslock detecting module
XButton2::
if (CapslockTrue = True)
{
	;Easy Copy
	if (NumpadTrue = True)
	{
		Send ^c
	}
	else
	{
		Send ^#{Left}
	}
}
else
{
	;Scrolls up
	while GetKeyState("XButton2", "P")
	{
		Send {WheelUp}
		Sleep, 70
	}
	return
}
return

XButton1::
if (CapslockTrue = True)
{
	;Easy Paste
	if (NumpadTrue = True)
	{
		Send ^v
	}
	else
	{
		Send ^#{Right}
	}
}
else
{
	;Scrolls up
	while GetKeyState("XButton1", "P")
	{
		Send {WheelDown}
		Sleep, 70
	}
	return
}
return

;Run Help

;Autoclicker (100x)
Numpad1::
if (CapslockTrue = False)
{
	Send {Click, 100}
}
else
{
	Send {Click, 100 Right}
}
return

;Suspend Key
NumpadSub:: 
Suspend, Toggle
if (A_IsSuspended = 0)
{
	Tooltip, Script Is Resumed
	Sleep, 1000
	ToolTip, , , ,
	Return
}
ToolTip, Script Is Suspended, , ,
Sleep, 1000
ToolTip, , , ,
Return

;Reload Script
NumpadDot:: 
SplashTextOn,,, Script Is Reloaded
Sleep, 1000
SplashTextOff
Reload
Return

;Saves Script
NumpadEnter::
if (NumpadTrue = True)
{
	Send, ^s
}
return

;Opens

;Run As Administrator
;NumpadAdd::
;if (NumpadTrue = True)
;{
;	Run, Admin2.Bat
;}
;return

;Opens File Explorer
^Numpad7::
FileRead, Path1_B, X:\ALL_Desktop\Main Script Files\Main Edit\Database\1.txt
InputBox, Path1, Assistant, Please enter a path to your desired file for ease of access,,400,130,,,,,%Path1_B%
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\1.txt
FileAppend, %Path1%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\1.txt
Return

Numpad7::
FileRead, Path1_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\1.txt
Sleep, 50
run, %Path1_A%
Return

;Opens Google
^Numpad8::
FileRead, Path2_B, X:\ALL_Desktop\Main Script Files\Main Edit\Database\2.txt
InputBox, Path2, Assistant, Please enter a path to your desired file for ease of access,,400,130,,,,,%Path2_B%
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\2.txt
FileAppend, %Path2%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\2.txt
Return

Numpad8::
FileRead, Path2_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\2.txt
Sleep, 50
run, %Path2_A%
Return

;Opens Minecraft
^Numpad9::
FileRead, Path3_B, X:\ALL_Desktop\Main Script Files\Main Edit\Database\3.txt
InputBox, Path3, Assistant, Please enter a path to your desired file for ease of access,,400,130,,,,,%Path3_B%
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\3.txt
FileAppend, %Path3%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\3.txt
Return

Numpad9::
FileRead, Path3_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\3.txt
Sleep, 50
run, %Path3_A%
Return

;Opens Sublime Text
^Numpad4::
FileRead, Path4_B, X:\ALL_Desktop\Main Script Files\Main Edit\Database\4.txt
InputBox, Path4, Assistant, Please enter a path to your desired file for ease of access,,400,130,,,,,%PAth4_B%
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\4.txt
FileAppend, %Path4%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\4.txt
Return

Numpad4::
FileRead, Path4_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\4.txt
Sleep, 50
run, %Path4_A%
Return

;Opens Epic Games
^Numpad5::
FileRead, Path5_B, X:\ALL_Desktop\Main Script Files\Main Edit\Database\5.txt
InputBox, Path5, Assistant, Please enter a path to your desired file for ease of access,,400,130,,,,,%Path5_B%
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\5.txt
FileAppend, %Path5%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\5.txt
Return

Numpad5::
FileRead, Path5_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\5.txt
Sleep, 50
run, %Path5_A%
Return

;Opens ____
^Numpad6::
FileRead, Path6_B, X:\ALL_Desktop\Main Script Files\Main Edit\Database\6.txt
InputBox, Path6, Assistant, Please enter a path to your desired file for ease of access,,400,130,,,,,%Path6_B%
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\6.txt
FileAppend, %Path6%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\6.txt
Return

Numpad6::
FileRead, Path6_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\6.txt
Sleep, 50
run, %Path6_A%
Return

;Sends Numbers using numpad if numpad is not True
If (NumpadTrue = False)
{
	NumpadHome:: SendRaw, 7
	NumpadUp::SendRaw, 8
	NumpadPgup::SendRaw, 9
	NumpadLeft::SendRaw, 4
	NumpadClear::Sendraw, 5
	NumpadRight::SendRaw, 6
	NumpadEnd::SendRaw, 1
	NumpadDown::SendRaw, 2
	NumpadPgdn::SendRaw, 3
	NumpadIns::SendRaw, 0
}
Return

;Custom Script Creator(Send, Loop, Run, and Msgbox)
Numpad0::
FileRead, CSslrmd, X:\ALL_Desktop\Main Script Files\Main Edit\Database\CSSLRMD.txt
FileRead, CScript, X:\ALL_Desktop\Main Script Files\Main Edit\Database\CScript.txt
If (CScript = 1)
{
	Send, %CSSLRMD%
}
If (CScript = 2)
{
	While GetKeyState("Numpad0", "P")
	{
		Send, %CSslrmd%
		Sleep, 500
	}
}
If (CScript = 3)
{
	Run, %CSslrmd%
}
If (CScript = 4)
{
	MsgBox, %CSslrmd%
}
Return

^Numpad0::
InputBox, CSEdit, Assistant, Please Enter a Number `n(1 = Send) `n(2 = Loop) `n(3 = Run) `n(4 = MsgBox),,400,200,,,,,
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\CScript.txt
FileAppend, %CSEdit%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\CScript.txt
Sleep, 500
InputBox, CSSLRMD, Assistant, Depending On The Number... What Should It Do?,, 400, 200,,,,,
If ErrorLevel
{
	Return
}
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\CSSLRMD.txt
FileAppend, %CSSLRMD%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\CSSLRMD.txt
Return

;Custom notepad
Numpad3::
IfWinExist, Assistant - Notepad, , ,
{
	Return
}
Gui , +AlwaysOnTop
FileRead, Notepad_A, X:\ALL_Desktop\Main Script Files\Main Edit\Database\Notepad_A.txt
Gui Ntpd: Font, s11, Sudo
Gui Ntpd: Add, Edit,r20 vNTPD w400 h500 , %Notepad_A%
Gui Ntpd: Font, s9, Sudo
Gui Ntpd: Add, Button, , Save 
Gui Ntpd: Show, Autosize ,Assistant - Notepad
Return

NtpdGuiClose:
Gui, Destroy
Return

NtpdButtonSave:
Gui, Submit, NoHide
FileDelete, X:\ALL_Desktop\Main Script Files\Main Edit\Database\Notepad_A.txt
FileAppend, %NTPD%, X:\ALL_Desktop\Main Script Files\Main Edit\Database\Notepad_A.txt
Return

;Zoom in 
^Up::
while GetKeyState("Up","P")
{
	Send, ^{WheelUp}
	Sleep, 300
}
Return

;Zoom out
^Down::
while GetKeyState("Down","P")
{
	Send, ^{WheelDown}
	Sleep, 300
}
Return

Numpad2::
Send, #+{s}
Return

;Capslock
NumpadDiv::
if (CapslockTrue = True)
{
	SetCapsLockState, Off
}
Else
{
	SetCapsLockState, On
}
Return

;Exits Program
PrintScreen::
if (NumpadTrue = True)
{
	if (CapslockTrue = True)
	{
		Send !{f4}
	}
}
else
{
	Send {PrintScreen}
}
return

;Volume Control
Insert::
if (NumpadTrue = True)
{
	Send {Volume_Up}
}
else
{
	Send {Insert}
}
return

Home::
if (NumpadTrue = True)
{
	Send {Volume_Down}
}
else
{
	Send {Home}
}
return

;MouseMovement

;Mouse Up

$Up::
if (NumpadTrue = True)
{
	MouseMove, 0, -100, 0, R
}
else
{
	Send {Up}
}
return

$+Up::
if (NumpadTrue = True)
{
	MouseMove, 0, -15, 0, R
}
Else
{
	Send, +{Up}
}
return

;Mouse Down

$Down::
if (NumpadTrue = True)
{
	MouseMove, 0, 100, 0, R
}
else
{
	Send {Down}
}
return

$+Down::
if (NumpadTrue = True)
{
	MouseMove, 0, 15, 0, R
}
Else
{
	Send, +{Down}
}
return

;Mouse Left

$Left::
if (NumpadTrue = True)
{
	MouseMove, -100, 0, 0, R
}
else
{
	Send {Left}
}
return

$+Left::
if (NumpadTrue = True)
{
	MouseMove, -15, 0, 0, R
}
Else
{
	Send, +{Left}
}
return

;Mouse Right

$Right::
if (NumpadTrue = True)
{
	MouseMove, 100, 0, 0, R
}
else
{
	Send {Right}
}
return

$+Right::
if (NumpadTrue = True)
{
	MouseMove, 15, 0, 0, R
}
Else
{
	Send, +{Right}
}
return

;Left and right click
End::
if (NumpadTrue = True)
{
	Send {Click, 1 Right}
}
else
{
	Send {End}
}
return

Delete::
if (NumpadTrue = True)
{
	Send {Click}
}
else
{
	Send {Del}
}
return

;Up And Down
PgUp::
while GetKeyState("PgUp", "P")
{
	Send {WheelUp}
	Sleep, 50
}
return

PgDn::
while GetKeyState("PgDn", "P")
{
	Send {WheelDown}
	Sleep, 50
}
return

^NumpadMult::
InputBox, XD, T, , , , , , , , ,
FileDelete, Yes.txt
FileAppend, %XD%, Yes.txt
Return

NumpadMult::
FileRead, XDD, Yes.txt
Run, %XDD%
Return













































































































































































































































































































































































































































































































