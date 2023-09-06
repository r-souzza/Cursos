#include 'protheus.ch'
#include 'parmtype.ch'

// USO DO MSExecAuto

user function execaut()

    Local aArea := GetArea()
    Local aDados := { }
    Private lMSErroAuto := .F.

    // DEFINI��O DOS DADOS A SEREM INCLUIDOS

    aDados := {;
                {"B1_COD", "111111",         NIL},; // NIL = N�O ESPECIFICADO
                {"B1_DESC", "PRODUTO TESTE", NIL},;
                {"B1_TIPO", "GG",            NIL}; // ; -> PARA PULAR LINHA
            }
    
    //INICIO DA TRANSA��O
    Begin Transaction
        // CHAMA CADASTRO DE PRODUTO
    MSExecAuto({|x, y|Mata010(x,y)},aDados,3) // x e y (parametros), Mata010 (nome da rotina) , numeral 3 (tipo de opera��o)

        if lMSErroAuto == .T.
            Alert("Ocorreram erros durante a opera��o!")
            MostraErro() // Fun��o padr�o do ADVPL para mostrar erros

            DisarmTransaction() // Desarmar a transa��o caso ocorra algum erro

        else
            MsgInfo("Opera��o finalizada!", "Aviso")
        ENDIF
        End Transaction

        RestArea(aArea)



return
