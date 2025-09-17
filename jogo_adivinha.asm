;---------------------------------------------------
; Programa: Adivinha o Número (NeanderWin básico)
; Autor: Bruna Francisca
; Data: 17/09/2025
; Objetivo: Verifica se o palpite (80h) é igual ao segredo (82h).
; Saída: 81h = 1 se acertou, 0 se errou.
;---------------------------------------------------
 
 LDA PALPITE     ; AC = valor digitado no endereço 80h
 ADD SEG_NEG     ; AC + (~SEGREDO + 1)  -> diferença
 JZ  ACERTO      ; Se zero, palpite == segredo
 LDA VAL0        ; Caso contrário, grava 0 (errou)
 STA RESULT
       
 HLT

ACERTO: LDA VAL1        ; Grava 1 (acertou)
 STA RESULT
        
 HLT

; ---------- Dados ----------
PALPITE: DB 0           ; End.80h – DIGITE aqui o palpite ANTES de rodar
RESULT:  DB 0           ; End.81h – Resultado (0 ou 1)
SEGREDO: DB 7           ; End.82h – Número secreto (0–255, pode mudar)
VAL0:    DB 0

VAL1:    DB 1

; Para comparar usamos SEG_NEG = ~SEGREDO + 1 (2’s complement)
SEG_NEG: DB 249         ; ← Para segredo =7,  ~7+1 = 249  (255-7+1)
