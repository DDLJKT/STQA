#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <GUIConstantsEx.au3>
#include <IE.au3>

Local $sGoogleSearchURL = "https://www.google.com/search?q="



Local $oGUI = GUICreate("Custom Google Search", 800, 600)

Local $input = GUICtrlCreateInput("", 100, 100, 400, 20)
Local $btnSearch = GUICtrlCreateButton("Search", 550, 100, 75, 20)
GUICtrlCreateLabel ( "GOOGLE", 300, 50 ,150,150 )
GUISetState(@SW_SHOW, $oGUI)

While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $btnSearch
            Local $sQuery = GUICtrlRead($input)
            _IENavigate($oIE, $sGoogleSearchURL & $sQuery)
    EndSwitch
WEnd

_IEQuit($oIE)
Exit