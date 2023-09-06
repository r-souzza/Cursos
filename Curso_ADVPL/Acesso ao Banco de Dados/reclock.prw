#include 'Protheus.ch'
#include 'Parmtype.ch'

// EXEMPLO DE USO DA FUNÇÃO RECLOCK

user function recfun() 
    Local aArea := SB1->(GetArea())

    DbSelectArea('SB1')
    Sb1->(DbSetOrder(1))
    Sb1->(DbGoTop())

// INICIAR A TRANSAÇÃO
    Begin Transaction

        MsgInfo("A descrição do produto será alterada!", "Atenção")

    If SB1->(DbSeek(FWXFilial('SB1') + '000002'))
        RecLock('SB1', .F.) // TRAVA O REGISTRO PARA ALTERAÇÃO // NÃO UTILIZA .T. (TRUE) EM TABELAS QUE SÃO PADRÃO
    Replace B1_DESC With "Teste"

    SB1->(MsUnlock()) //Destravar a tabela

    Endif
        MsgAlert ('Alteração efetuada!', 'Atenção')

    End Transaction
    RestArea(aArea)

return
