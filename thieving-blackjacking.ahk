﻿#Persistent
#SingleInstance, force
SetBatchLines -1

#If RsActive()
;; men
	a::
		click right
	return

	s::
		MouseMove, 0, 55, 0, R
	return

	d::
		click
	return

	f::
		MouseMove, 0, -55, 0, R
	return
	
;; ham

	q::
		click right
	return

	w::
		MouseMove, 0, 85, 0, R
	return

	e::
		click
	return

	r::
		MouseMove, 0, -85, 0, R
	return
#If

/*
#IfWinActive, ahk_exe AutoHotkey.exe
d::
	click right
	MouseMove, 0, 40, 0, R
	click
	MouseMove, 0, -40, 0, R
return

f::
	click right
	MouseMove, 0, 70, 0, R
	click
	MouseMove, 0, -70, 0, R
return
#IfWinActive, ahk_exe AutoHotkey.exe
*/

#IfWinActive, ahk_class Notepad++
~^s::reload
#IfWinActive

RsActive() {
	WinGet, WIN, ProcessName, A
	If InStr(WIN, "JagexLauncher.exe") or InStr(WIN, "OSBuddy.exe")
		return true
	else
		return false
}

f12::
	suspend
	SoundBeep
return
