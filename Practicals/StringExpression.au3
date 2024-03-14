#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <MsgBoxConstants.au3>

Local $sString = "This is a test string 12345 with some numbers."

; Define the regular expression pattern
Local $sRegExp = "\d+" ; Match one or more digits

; Perform the regular expression match
Local $aResult = StringRegExp($sString, $sRegExp, 3)

; Check if any matches were found
If @error Then
    MsgBox($MB_OK, "Error", "Error occurred: " & @error)
    Exit
EndIf

; Display the matched strings
If IsArray($aResult) Then
    For $i = 0 To UBound($aResult) - 1
        MsgBox($MB_OK, "Match " & ($i + 1), "Matched string: " & $aResult[$i])
    Next
Else
    MsgBox($MB_OK, "No Matches", "No matches found.")
EndIf