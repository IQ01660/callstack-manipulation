;;; ----------------------------------------------------------------------------------------
;;; Given a string to print (see data section), determine its length, write it to
;;; the console, and then exit.
;;; ----------------------------------------------------------------------------------------

;;; ----------------------------------------------------------------------------------------
	global  string_length
;;; ----------------------------------------------------------------------------------------

;;; ----------------------------------------------------------------------------------------
        section	.text	              ; The start of the code portion of the program.

;;; COMPLETE THE string_length FUNCTION.
string_length:
    mov    eax,   0        ; setting the init return value to 0

loop_start:		  ; start of the loop

    ;; conditions
    mov    dl,  byte [rdi]    ; storing the value at the addr given as an argument
    cmp    dl,   0	  ; checking if that value is the null character
    je     loop_end       ; if it is then stop/skip the loop

    ;; loop body

    inc    eax    	  ; incrementing the count to be returned
    inc    rdi     	  ; incrementing the pointer to the string - moving to nest char
    jmp    loop_start     ; loop again and check the conditions before going into body
loop_end:
    ret    	

;;; ----------------------------------------------------------------------------------------


