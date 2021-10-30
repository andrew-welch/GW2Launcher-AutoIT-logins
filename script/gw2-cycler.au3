;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; https://github.com/pandawelch/GW2Launcher-AutoIT-logins/script/gw2cycler.au3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Editable Variables
$loadtime = 11000 ; Time to wait for the game window to load in after the character screen in milliseconds
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#include <AutoItConstants.au3>
Opt("WinTitleMatchMode", 2)

; Get title substring from input
if $cmdline[0] > 0 Then

   $titletarget=$cmdline[1]

Else

   $titletarget = "Guild Wars 2"

EndIf

; After launch, wait for window and press enter
$target  = WinWait("[TITLE:" & $titletarget & "; CLASS:ArenaNet_Dx_Window_Class]","",5)

if $target = 0 Then

   ; Exit error, no window found after 5 seconds
   Exit (1)

EndIf

; Activate window and enter character, wait the loadtime duration
WinActivate($target,"")
Send("{Enter}")
Sleep($loadtime)

; Close the window
WinClose($target)
Exit (0)