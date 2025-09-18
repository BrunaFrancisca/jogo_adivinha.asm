; ------------------------------------------------------
; Programa: Subtrator Simples
; Autor: Bruna Francisca
; Data: 19/09/2025
; Objetivo: Subtrai dois numeros e mostra o resultado.
; Saida: O resultado da subtracao e exibido no visor.
; ------------------------------------------------------

        ORG 00h

        LDA NUM1             ; Carrega o primeiro numero (10) no acumulador
        ADD COMP_NUM2        ; Soma o complemento do segundo numero (253)
        STA RESULTADO        ; Armazena o resultado da soma (10 + 253 = 263 -> 7 em 8 bits)
        LDA RESULTADO        ; Carrega o resultado de volta para o acumulador
        OUT 0                 ; Exibe o valor do acumulador no visor
        HLT                  ; Termina o programa

; ---------- Dados ----------
        ORG 80h              ; Dados a partir do endereco 80h
NUM1:           DB 10        ; Primeiro numero (minuendo)
NUM2:           DB 3         ; Segundo numero (subtraendo)
COMP_NUM2:      DB 253       ; Complemento de 2 de 3: (256 - 3)
RESULTADO:      DB 0         ; Armazena o resultado da subtracao