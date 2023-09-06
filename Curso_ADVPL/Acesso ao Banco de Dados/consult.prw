#include 'protheus.ch'
#include 'parmtype.ch'
user function consult()

    Local aArea :=  SB1->(GetArea())

    DBSELECTAREA("SB1") // Comando para abrir a tabela
    SB1->(DBSETORDER(1)) // Posiciona no indice 1
    SB1->(DBGOTOP())

    If SB1->(DBSEEK(FWXFilial("SB1")+ "000002")) //FWXFilial-consultar na filial que estiver no momento
        msgAlert(SB1->B1_DESC) // Comando para imprimir na tela a descrição (B1_DESC)
    ENDIF

    RestArea(aArea) // Fechar a tabela ao finalizar a consulta


return
