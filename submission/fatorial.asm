SC /200
HM /00E

@ /0100 
K /0005 ;teste 5!


@ /0200 ; tentei deixar linha por linha igual fatorial.mvn p facilitar
K /0000
LD /100
JZ /500
MM /010
MM /012

LD /012
SB /400
JZ /300 ; se zero fim do loop
MM /012
ML /010
MM /010
JP /20a





@ /0300
LD /010
MM /102
RS /200


@ /400
K /0001

@ /0500
LV /001
MM /102
RS /200