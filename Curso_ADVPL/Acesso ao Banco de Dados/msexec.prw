#include 'protheus.ch'
#include 'parmtype.ch'

// USO DO MSExecAuto

user function execaut()

    Local aArea := GetArea()
    Local aDados := { }
    Private lMSErroAuto := .F.

    // DEFINIÇÃO DOS DADOS A SEREM INCLUIDOS

    aDados := {;
                {"B1_COD", "111111",         NIL},; // NIL = NÃO ESPECIFICADO
                {"B1_DESC", "PRODUTO TESTE", NIL},;
                {"B1_TIPO", "GG",            NIL}; // ; -> PARA PULAR LINHA
            }
    
    //INICIO DA TRANSAÇÃO
    Begin Transaction
        // CHAMA CADASTRO DE PRODUTO
    MSExecAuto({|x, y|Mata010(x,y)},aDados,3) // x e y (parametros), Mata010 (nome da rotina) , numeral 3 (tipo de operação)

        if lMSErroAuto == .T.
            Alert("Ocorreram erros durante a operação!")
            MostraErro() // Função padrão do ADVPL para mostrar erros

            DisarmTransaction() // Desarmar a transação caso ocorra algum erro

        else
            MsgInfo("Operação finalizada!", "Aviso")
        ENDIF
        End Transaction

        RestArea(aArea)



return
