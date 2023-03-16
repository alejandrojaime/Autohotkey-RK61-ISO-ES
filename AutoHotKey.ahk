#Requires AutoHotkey v2.0

Persistent


; Crl + Alt + Supr
^!Backspace::Run "Taskmgr.exe"


; Change windows virtual desktop
#RAlt::
#-::
#WheelDown::
{
	Send "{Blind}#^{Left}"
}

#RControl::
#AppsKey::
#WheelUp::
{
	Send "{Blind}#^{Right}"
}


; Custom keys
RAlt & Escape::
RControl & Escape:: 
{ 
	Send("\") 
}


; Arrows

; Left arrow
LAlt & RAlt::
{
	If GetKeyState("LShift")
		If GetKeyState("LControl")
			Send "^+{Left}"
		else
			Send "+{Left}"
	else
		Send "{Left}"
	Return
}

; Right arrow
LAlt & RControl::
{
	If GetKeyState("LShift")
		If GetKeyState("LControl")
			Send "^+{Right}"
		else
			Send "+{Right}"
	else
		Send "{Right}"
	Return
}

; Up arrow
LAlt & -::
{
	If GetKeyState("LShift")
		If GetKeyState("LControl")
			Send "^+{Up}"
		else
			Send "+{Up}"
	else
		Send "{Up}"
	Return
}

; Down arrow
LAlt & AppsKey::
{
	If GetKeyState("LShift")
		If GetKeyState("LControl")
			Send "^+{Down}"
		else
			Send "+{Down}"
	else
		Send "{Down}"
	Return
}


; Voume
RControl & F12::
RControl & ¡::
RAlt & F12::
RAlt & ¡::
LAlt & F12::
LAlt & ¡::
{
	Send "{Volume_Up}"
}

RControl & F11::
RControl & '::
RAlt & F11::
RAlt & '::
LAlt & F11::
LAlt & '::
{
	Send "{Volume_Down}"
}


; Media
RControl & F10::
RControl & 0::
RAlt & F10::
RAlt & 0::
LAlt & F10::
LAlt & 0::
{
	Send "{Media_Stop}"
}

RControl & F9::
RControl & 9::
RAlt & F9::
RAlt & 9::
LAlt & F9::
LAlt & 9::
{
	Send "{Media_Next}"
}

RControl & F8::
RControl & 8::
RAlt & F8::
RAlt & 8::
LAlt & F8::
LAlt & 8::
{
	Send "{Media_Play_Pause}"
}

RControl & F7::
RControl & 7::
RAlt & F7::
RAlt & 7::
LAlt & F7::
LAlt & 7::
{
	Send "{Media_Prev}"
}

RControl & F6::
RControl & 6::
LAlt & F6::
LAlt & 6::
{
	Send "{Media_Stop}"
}


; Execute apps
RControl & F5::
RControl & 5::
LAlt & F5::
LAlt & 5::
{
	Run "C:\Users\Alejandro\AppData\Roaming\Spotify\Spotify.exe"
}

RControl & F3::
RControl & 3::
LAlt & F3::
LAlt & 3::
{
	Run "C:\Program Files\Mozilla Thunderbird\thunderbird.exe"
}

RControl & F2::
RControl & 2::
LAlt & F2::
LAlt & 2::
{
	Send "{Browser_Home}"
}

RControl & F1::
RControl & 1::
LAlt & F1::
LAlt & 1::
{
	Run "explorer.exe"
}

