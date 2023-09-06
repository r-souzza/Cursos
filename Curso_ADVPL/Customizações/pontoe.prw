#include 'Protheus.ch'
#include 'Parmtype.ch'

// USO DO PONTO DE ENTRADA
// PONTO DE ENTRADA - FUN��ES DA TOTVS QUE PODEM SER CHAMADAS
// EDITANDO UMA FUNCIONALIDADE

user function A010TOK()
        Local lExecuta := .T.
        Local cTipo := ALLTrim(M->B1_TIPO) // ALLTrim -> Limpa todos os espa�os em branco de uma string
        Local cConta := AllTrim(M->B1_CONTA)

        If (cTipo == "PA" .AND. cConta = "001")
            Alert("A conta <b> "+ cConta + "</b> n�o pode estar"+ ; 
            "associada a um produto do tipo <b>" + cTipo)

            lExecuta := .F.

        Endif


Return(lExecuta)
