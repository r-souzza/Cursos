#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ESTRUTURAS DE REPETI��O - FOR

User function repfor()

    Local nCount
    Local nNum := 0

    For nCount := 0 To 10 Step 2
    
    nNum += nCount

    NEXT
    Alert ("Valor: " + CVALTOCHAR( nNum ))

RETURN
