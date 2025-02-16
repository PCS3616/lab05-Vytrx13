GD /000 ; le primeiro
MM /100
GD /000 ; le espaço branco
GD /000 ; le segundo
SB L3030 
MM /102
LD /100
SB L3030
AD /102

; ideia: byte_menos_sig = numero - byte_mais_sig*256 - byte_meio*16
; byte_meio  = numero/16 - byte_mais_sig * 256
; byte_mais_sig = numero/256
MM NUMERO
DV L0100
MM BYTE_MAIS_SIG
ML L0100
MM BYTE_MAIS_SIG_SHIFT

LD NUMERO
DV L0010 ; numero / 16
SB BYTE_MAIS_SIG_SHIFT ; ac = numero/16 - byte_mais_sig * 256
MM BYTE_MEIO
ML L0010; 
MM BYTE_MEIO_SHIFT

LD NUMERO
SUB BYTE_MAIS_SIG_SHIFT
SUB BYTE_MEIO_SHIFT

; finalmente, estou com o byte menos sig no ac
SUB L000A
JN /300
JZ /300
LD NUMERO
AD L3030
PD /100
HM /000




@ /0200 ; ctes
L3030 K /3030
L000A K /000A
L0100 K /0100
L0010 K /0010 ; 16
L0100 K /0100; 256
L000A K /000A;
NUMERO K /0000
BYTE_MAIS_SIG K /0000
BYTE_MEIO K /0000
BYTE_MAIS_SIG_SHIFT K /0000
BYTE_MEIO_SHIFT K /0000

@ /0300; vai um
K /0000
LD NUMERO
SB L000A
AD L0100    
AD L3030
PD /100
HM /000
        

