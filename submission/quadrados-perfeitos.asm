; iniico do loop
LD /504 ; ac = 63
SB /500 ; ac = 63 - i
JZ /700 ; fim do loop se zero
LD /500 ; ac = i
ML /400 ; ac *= 2
AD /402 ; ac++
AD /502 ; ac += total
MM /502 ; total = ac
SC /300 ; subrotina pra guardar o valor
LD /500 ; ac = i
AD /402 ; ac++
MM /500 ; i = ac
JP /000 ; volta pro comeco do loop













;subrotina : pega oq ta no ac, guarda na memoria. proxima vez q for guardar
; vai ser no prox endereço
@ /0300
K /0000
MM /102 ; aqui 'e memoria 0302
LD /400 ; ac = 2
AD /302 ; ac += mem[302]
MM /302 ; mem [302] = ac ; ou seja, somei em 2 na memoria 302
RS /300


@ /0400
K /0002 ;cte = 2 (mem 400)
K /0001 ; cte = 1 (mem 402)



@ /0500
K /0000 ; começo com i = 0 (isso 'e memoria 0500)
K /0000 ; variavel total (isso 'e memoria 0502)
K /003F ; constante n = 63  (isso 'e memoria 0504)

@ /0700
HM /00E