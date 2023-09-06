#include 'protheus.ch'
#include 'parmtype.ch'
#include 'TopConn.ch'

user function sql()

// DECLARAÇÃO DE VARIÁVEIS

    Local aArea := SB1>(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local nCount := 0

// DESCREVENDO A QUERY (CONSULTA)

    cQuery := "SELECT "
    cQuery += "B1_COD AS CODIGO, "
    cQuery += "B1_DESC AS DESCRICAO"
    cQuery += "FROM"
    cQuery += " "+ RetSQLName("SB1")+ "SB1"
    cQuery += "WHERE"
    cQuery += "B1_MSBLQL != '1' "

// EXECUTANDO A CONSULTA ACIMA

        TCQuery cQuery New Alias "TMP"

    While ! TMP -> (EoF()) // End of File - Final do arquivo
        AADD(aDados, TMP->CODIGO)
        AADD(ADados, TMP->DESCRICAO)
        TMP->(DbSkip())
    EndDo

    Alert(Len(aDados))

    For nCount := 1 To Len(aDados)
        MsgInfo(aDados[nCount])
    Next nCount

    TMP->(DbCloseArea)
    RestArea(aArea)


return
