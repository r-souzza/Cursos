#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ESTRUTURAS DE REPETIÇÃO - WHILE COMPOSTO

User Function whilec()

Local nNum1 := 1
Local cNome := "RCTI"

While nNum1 != 10 .AND. cNome != "PROTHEUS"
    nNum1++
        If nNum1 == 5
        cNome := "PROTHEUS"
        ENDIF
EndDo
    Alert("Numero: "+ CVALTOCHAR( nNum1 ))
    Alert("Nome: "+ CVALTOCHAR( cNome ))

Return
