#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <FileConstants.au3>

Global $hWnd, $hEdit

$hWnd = GUICreate("Simple Notepad", 600, 400)
$hEdit = GUICtrlCreateEdit("", 10, 40, 580, 350, BitOR($ES_AUTOVSCROLL, $ES_AUTOHSCROLL, $WS_VSCROLL, $WS_HSCROLL))
GUICtrlCreateLabel("File:", 10, 10, 50, 20)
GUICtrlSetFont(-1, 10, 400, "", "Arial")
GUICtrlCreateButton("New", 70, 10, 50, 20)
GUICtrlCreateButton("Open", 130, 10, 50, 20)
GUICtrlCreateButton("Save", 190, 10, 50, 20)
GUICtrlCreateButton("Save As", 250, 10, 60, 20)
GUISetState(@SW_SHOW)

While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $GUI_EVENT_PRIMARYDOWN
            If GUICtrlRead($hEdit) = "Untitled" Then
                GUICtrlSetData($hEdit, "")
            EndIf
        Case $GUI_EVENT_CLOSE
            Exit
        Case $GUI_EVENT_CLOSE
            Exit
        Case $GUI_EVENT_CLOSE
            Exit
        Case $GUI_EVENT_CLOSE
            Exit
    EndSwitch
WEnd
