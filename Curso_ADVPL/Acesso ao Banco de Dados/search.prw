#INCLUDE 'Protheus.ch'
#INCLUDE 'Parmtype.ch'

user function search()

    Local aArea := SB1->(GetArea())
    Local cMsg := ''

    dbSelectArea("SB1")
    SB1->(dbSetOrder(1))
    SB1->(DBGOTOP( )) // Come�ar no inicio da tabela

    cMsg := Posicione(      'SB1',;
                            1,;   
                            FWXfilial('SB1')+ '000002',;
                            'B1_DESC')

    Alert("Descri��o Produto:" +cMsg, "AVISO")   

    RestArea(aArea)                  


return
