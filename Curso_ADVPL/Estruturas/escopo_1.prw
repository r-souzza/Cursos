#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

Static cStat := ''

user function escopo1 ()

    //VARIAVEIS LOCAIS
    Local nVar0 := 1
    Local nVar1 := 20

    //Variavel Private
    Private cPri := 'private!'

    //Variavel public
    Public __cPublic := 'RCTI'

    TestEscop(@nVar0, @nVar1)


return
// ------------ função static ------

Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei'
    Default nValor1 := 0

    //Alterando o conteudo da variavel
    nValor2 := 10

    //mostrar o conteudo da variável private
    Alert("Private: "+ cPri)

    // Alterar o valor da variável public
    Alert("Publica: "+ __cPublic)

    MSGALERT(nValor2)
    Alert("Variavel Static: "+ cStat)

RETURN
