#include 'Protheus.ch'
#include 'Parmtype.ch'

// EXEMPLO DE USO DA FUN��O RECLOCK

user function recfun() 
    Local aArea := SB1->(GetArea())

    DbSelectArea('SB1')
    Sb1->(DbSetOrder(1))
    Sb1->(DbGoTop())

// INICIAR A TRANSA��O
    Begin Transaction

        MsgInfo("A descri��o do produto ser� alterada!", "Aten��o")

    If SB1->(DbSeek(FWXFilial('SB1') + '000002'))
        RecLock('SB1', .F.) // TRAVA O REGISTRO PARA ALTERA��O // N�O UTILIZA .T. (TRUE) EM TABELAS QUE S�O PADR�O
    Replace B1_DESC With "Teste"

    SB1->(MsUnlock()) //Destravar a tabela

    Endif
        MsgAlert ('Altera��o efetuada!', 'Aten��o')

    End Transaction
    RestArea(aArea)

return
