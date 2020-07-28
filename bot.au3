

;1 minute is 23 loops

;10 minutes is 200 loops

;1 hour is 1200 loops
;9 hours is 10800

Local $IVNUM = 2

ConsoleWrite(PixelGetColor(686, 467))
ConsoleWrite(@LF)

For $i = 1 to 20000

;sleep(250)
MouseClick("left",1821,1140)  ;opens GTL
;If $i = 1 Then

   ;Else
	  ;MouseClick("left",1821,1140)
	  ;Sleep(250)
   ;EndIf
;sleep(300)
;sleep(85)
MouseClick("left",744,467)  ;clicks on most recent pokemon
;sleep(85)
MouseClick("left",791,453)  ;clicks on IV page


Local $iColor = PixelGetColor(838,490)
Local $iColor7 = PixelGetColor(845,490)

;ConsoleWrite($iColor & @LF)
;ConsoleWrite($iColor7 & @LF)

Local $iColor2 = PixelGetColor(838,522)
Local $iColor8 = PixelGetColor(845,522)

;ConsoleWrite($iColor2 & @LF)
;ConsoleWrite($iColor8 & @LF)

Local $iColor3 = PixelGetColor(838,554)
Local $iColor9 = PixelGetColor(845,554)

;ConsoleWrite($iColor3 & @LF)
;ConsoleWrite($iColor9 & @LF)

Local $iColor4 = PixelGetColor(838,586)
Local $iColor10 = PixelGetColor(845,586)

;ConsoleWrite($iColor4 & @LF)
;ConsoleWrite($iColor10 & @LF)

Local $iColor5 = PixelGetColor(838,618)
Local $iColor11 = PixelGetColor(845,618)

;ConsoleWrite($iColor5 & @LF)
;ConsoleWrite($iColor11 & @LF)

Local $iColor6 = PixelGetColor(838,650)
Local $iColor12 = PixelGetColor(845,650)

;ConsoleWrite($iColor6 & @LF)
;ConsoleWrite($iColor12 & @LF)

Local $HP = 0
Local $ATK = 0
Local $DEF = 0
Local $SPATK = 0
Local $SPDEF = 0
Local $SPD = 0


If $iColor > 16514000 And $iColor < 16780000 And $iColor7 > 15600000 And $iColor7 < 16780000 Then
   $HP = 1
EndIf

If $iColor2 > 16514000 And $iColor2 < 16780000 And $iColor8 > 16514000 And $iColor8 < 16780000 Then
   $ATK = 1
EndIf

If $iColor3 > 16514000 And $iColor3 < 16780000 And $iColor9 > 16514000 And $iColor9 < 16780000 Then
   $DEF = 1
EndIf

If $iColor4 > 16514000 And $iColor4 < 16780000 And $iColor10 > 16514000 And $iColor10 < 16780000 Then
   $SPATK = 1
EndIf

If $iColor5 > 16514000 And $iColor5 < 16780000 And $iColor11 > 16514000 And $iColor11 < 16780000 Then
   $SPDEF = 1
EndIf

If $iColor6 > 16514000 And $iColor6 < 16780000 And $iColor12 > 16514000 And $iColor12 < 16780000 Then
   $SPD = 1
EndIf

;ConsoleWrite($HP & @LF)
;ConsoleWrite($ATK & @LF)
;ConsoleWrite($DEF & @LF)
;ConsoleWrite($SPATK & @LF)
;ConsoleWrite($SPDEF & @LF)
;ConsoleWrite($SPD & @LF)
;ConsoleWrite(@LF)

Local $TOTAL = $HP + $ATK + $DEF + $SPATK + $SPDEF + $SPD
;ConsoleWrite($TOTAL & @LF)
;ConsoleWrite(@LF)

Local $petilil = PixelGetColor(689, 466)
Local $luvdisc = PixelGetColor(690, 464)
Local $shedninja = PixelGetColor(686, 467)

;sleep(300)
MouseClick("left",1194,451)  ;closes pokemon page
;sleep(300)
If ($petilil > 9350000 And $petilil < 9500000) Or ($luvdisc > 14900000 And $luvdisc < 15150000) Or ($shedninja > 13400000 And $shedninja < 13600000) Then

   ElseIf $TOTAL >= $IVNUM And ($Atk + $SPATK <> 2) Then
   MouseClick("left",1246,464)  ;clicks on buy button
   MouseClick("left",960,586)  ;confirms buy
EndIf

MouseClick("left",1309,328)

If Mod($i, 60) = 0 Then
   Send("{w down}")
   sleep(250 + (Random(0, $i, 1) / 10))
   Send("{w up}")
EndIf

If Mod($i, 90) = 0 Then
   Send("{s down}")
   sleep(250 + (Random(0, $i, 1) / 10))
   Send("{s up}")
EndIf

Next
