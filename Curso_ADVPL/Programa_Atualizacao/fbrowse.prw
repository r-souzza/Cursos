#include 'protheus.ch'
#include 'parmtype.ch'

// USO DO FilBrowse -> Permite a utiliza��o de filtros na MBrowse

user function mbrowse()

        Local cAlias := "SA2" // SA2 = CADASTRO DE FORNECEDORES
        Local aCores := {}
        Local cFiltra := "A2_FILIAL == "+XfILIAL('SA2')+"' .And. A2_EST == 'SP'"
        Private cCadastro := "Cadastro FilBrowse"
        Private aRotina := {}
        Private aIndexSA2 := {}
        Private bFiltraBrw := {|| FilBrowse(cAlias,@aIndexSA2,@cFiltra)} // USO DO FilBrowse


        AADD(aRotina, {"Pesquisar", "AxPesqui",0,1}) 
        AADD(aRotina, {"Visualizar", "AxVisual",0,2})   
        AADD(aRotina, {"Incluir", "u_BInclui",0,3})      
        AADD(aRotina, {"Trocar", "U_BAltera",0,4})       
        AADD(aRotina, {"Excluir", "U_BDeleta",0,5})      
        AADD(aRotina, {"OlaMundo", "U_BLegenda",0,6})

        //aCores

        AADD(aCores, {"A2_TIPO == 'F'", "BR_VERDE"}) // CASO A2_TIPO SEJA F, A COR SER� VERDE
        AADD(aCores, {"A2_TIPO == 'J'", "BR_AMARELO"}) // CASO A2_TIPO SEJA F, A COR SER� VERDE
        AADD(aCores, {"Empty(A2_TIPO)" , "BR_AMARELO"}) // CASO A2_TIPO SEJA F, A COR SER� VERDE


        dbSelectArea(cAlias)
        dbSetOrder(1)

        Eval(bFiltraBrw) // Eval PARA EXECUTAR O BLOCO DE C�DIGO FilBrowse

        dbGoTop()
        mBrowse(6,1,22,75,cAlias,,,,,,aCores)

        EndFilBrw(cAlias,aIndexSA2)

return

/*-------------------------------------------------------------
                FUN��O BInclui - Inclus�o
--------------------------------------------------------------*/

User Function BInclui(cAlias,nReg,nOpc)  // nReg = R_E_C_N_O nOpc = N�mero da op��o solicitada
        Local nOpcao := 0
        nOpcao := AxInclui(cAlias,nReg,nOpc)
            if nOpcao == 1
                MsgInfo("Inclusao efetuada com sucesso!")
            else
                MsgAlert("Inclus�o Cancelada!")
            ENDIF

RETURN  NIL

/*-------------------------------------------------------------
                FUN��O BLegenda - Legendas
--------------------------------------------------------------*/

User Function BLegenda()
        Local aLegenda := {}

        AADD(aLegenda, {"BR_VERDE", "Pessoa F�sica"}) // DEFINE A COR E O QUE ELA SIGNIFICA
        AADD(aLegenda, {"BR_VERDE", "Pessoa Jur�dica"}) // DEFINE A COR E O QUE ELA SIGNIFICA
        AADD(aLegenda, {"BR_PRETO", "N�o classificado"}) // DEFINE A COR E O QUE ELA SIGNIFICA

        BrwLegenda(cCadastro, "Legenda",aLegenda)

Return




                

