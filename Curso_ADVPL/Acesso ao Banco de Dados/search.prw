#INCLUDE 'Protheus.ch'
#INCLUDE 'Parmtype.ch'

user function search()

    Local aArea := SB1->(GetArea())
    Local cMsg := ''

    dbSelectArea("SB1")
    SB1->(dbSetOrder(1))
    SB1->(DBGOTOP( )) // Começar no inicio da tabela

    cMsg := Posicione(      'SB1',;
                            1,;   
                            FWXfilial('SB1')+ '000002',;
                            'B1_DESC')

    Alert("Descrição Produto:" +cMsg, "AVISO")   

    RestArea(aArea)                  


return
