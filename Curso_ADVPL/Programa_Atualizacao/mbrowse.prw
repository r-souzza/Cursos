#include 'protheus.ch'
#include 'parmtype.ch'

// USO DO MBrowse -> Semelhante ao AXCadastro, porém possui muito mais recursos

user function browse()
        
        Local cAlias := "SB1"
        Private cTitulo := "Cadastro Produtos MBROWSE"
        Private aRotina := {}

        // USANDO O MBROWSE PODEMOS CHAMAR ROTINAS ESPECIFICAS

        AADD(aRotina, {"Pesquisar", "AxPesqui",0,1})    // AXPesqui -> Nome da rotina que será executada , 0 = número reservado, 1 = tipo de operação
        AADD(aRotina, {"Visualizar", "AxVisual",0,2})   // AXVisual -> Nome da rotina que será executada
        AADD(aRotina, {"Incluir", "AxInclui",0,3})      // AXInclui -> Nome da rotina que será executada 
        AADD(aRotina, {"Trocar", "AxAltera",0,4})       // AXAltera -> Nome da rotina que será executada 
        AADD(aRotina, {"Excluir", "AxDeleta",0,5})      // AXDeleta -> Nome da rotina que será executada
        AADD(aRotina, {"OlaMundo", "u_olamundo",0,6})   // 6 = Outras ações

        dbSelectArea(cAlias) // OU dbSelectArea("SB1") = nesse caso não precisaria da variável cAlias
        dbSetOrder(1)
        mBrowse(,,,,cAlias)
        // mBrowse(6,1,22,75,cAlias)




return NIL
