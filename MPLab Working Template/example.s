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
    movlw 4h ; puts hex 4 in WREG
    movf 17h, W ; copies WREG into location 17h
loop:
    bra loop
    end 
