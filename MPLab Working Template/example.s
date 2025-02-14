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
    movlw 00010001B ; puts 8 in WREG
    movf 16h, W ; copies WREG into location 16h
loop:
    bra loop
    end 

