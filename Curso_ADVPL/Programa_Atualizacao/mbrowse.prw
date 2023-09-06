#include 'protheus.ch'
#include 'parmtype.ch'

// USO DO MBrowse -> Semelhante ao AXCadastro, por�m possui muito mais recursos

user function browse()
        
        Local cAlias := "SB1"
        Private cTitulo := "Cadastro Produtos MBROWSE"
        Private aRotina := {}

        // USANDO O MBROWSE PODEMOS CHAMAR ROTINAS ESPECIFICAS

        AADD(aRotina, {"Pesquisar", "AxPesqui",0,1})    // AXPesqui -> Nome da rotina que ser� executada , 0 = n�mero reservado, 1 = tipo de opera��o
        AADD(aRotina, {"Visualizar", "AxVisual",0,2})   // AXVisual -> Nome da rotina que ser� executada
        AADD(aRotina, {"Incluir", "AxInclui",0,3})      // AXInclui -> Nome da rotina que ser� executada 
        AADD(aRotina, {"Trocar", "AxAltera",0,4})       // AXAltera -> Nome da rotina que ser� executada 
        AADD(aRotina, {"Excluir", "AxDeleta",0,5})      // AXDeleta -> Nome da rotina que ser� executada
        AADD(aRotina, {"OlaMundo", "u_olamundo",0,6})   // 6 = Outras a��es

        dbSelectArea(cAlias) // OU dbSelectArea("SB1") = nesse caso n�o precisaria da vari�vel cAlias
        dbSetOrder(1)
        mBrowse(,,,,cAlias)
        // mBrowse(6,1,22,75,cAlias)




return NIL
