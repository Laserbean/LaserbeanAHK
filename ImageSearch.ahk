#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

DrawRectangle(lineColour, posX, posY, posEndX, posEndY) {
    ; Create a transparent GUI window
    Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
    Gui, Color, %lineColour%
    Gui, Margin, 0
    ; Gui, +AlwaysOnTop -Caption +ToolWindow
    ; Gui, Show, x%posX% y%posY% w%width% h%height%

    width := posEndX - posX
    height := posEndY - posY

    Gui, Show, x%posX% y%posY% w%width% h%height%
    
    Gui, Show,
    ; Gui, Show, w%width% h%height% NoActivate
    ; WinWaitClose
    ; Gui, Destroy
}




;#region 
; !MButton::
;     MouseGetPos, xpos, ypos

;     lineColour := "0xFF0000" ; Red color
;     sposX := xpos-20
;     sposY := ypos+100
;     swidth := xpos+60
;     sheight := ypos + 500

;     DrawRectangle(lineColour, sposX, sposY, swidth, sheight)
;     Sleep, 500

;     Gui, Destroy
; Return

;#endregion

;#region Find Image/icon on screen
; ^+MButton::
;     IconFile := "C:\Users\Teaio\Documents\marcus\_ahk scripts\pan.png"
;     MouseGetPos, xpos, ypos
;     ImageSearch PanPosX, PanPosY, xpos, ypos, xpos + 100, ypos + 100, *Icon %IconFile%

;     if ErrorLevel = 0
;     {
;         MsgBox, Icon found at coordinates: %PanPosX%, %PanPosY%
;     }
;     else
;     {
;         MsgBox, Icon not found.
;     }

; Return
;#endregion

; DrawRectangle(lineColour, sposX, sposY, swidth, sheight)D

