; Name: Timi Ayo-Yusuf
; Student ID: 11591999    
    
    
processor 18F8722
radix dec 
    
CONFIG OSC = HS
CONFIG WDT = OFF
CONFIG LVP = OFF
    
#include <xc.inc.>

PSECT resetVector, class=CODE, reloc=2
resetVector:
    goto start
    
PSECT start, class=CODE, reloc=2
start:
    movlw 8 
    movf 15h, W 
    addlw 11
    movf 15h, W
loop:
    bra loop
    end 
