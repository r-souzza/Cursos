#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*
        TIPOS DE DADOS

NUM�RICO: 3 / 21.000 / 0.4 / 200000
L�GICO: .T. / .F. 
CARACTERE: "D" / 'C'
DATA: DATE()
ARRAY: {}"VALOR1", "VALOR2", "VALOR3"} -> (Unidimensionais = Vetores, Multidimensionais = Matrizes)
BLOCO DE C�DIGO: {||VALOR := 1, MsgAlert("Valor � igual a "+cValToChar (VALOR))} -> a vari�vel executa uma linha de c�digo

*/

user function VARIAVEL()

//DECLARANDO AS VARI�VEIS

    Local nNum := 28 // LOCAL -> escopo onde a vari�vel � definida, se n�o inserir 'Local' ela ser� definida como PRIVATE.
    Local lLogic := .T.
    Local cCarac := "String"
    Local dData := DATE()
    Local aArray := {"Joao", "Maria", "Jose"}
    Local bBloco := {||nValor := 2, MSGALERT("O n�mero � igual a: "+ cValToChar(nValor))} //cValToChar imprime uma vari�vel como string

//EXIBINDO AS VARI�VEIS

    Alert(nNum) // N�mero n�o precisa de cValToChar
    Alert(lLogic)
    Alert(CVALTOCHAR(cCarac)) // Usar cValToChar para imprimir caractere
    Alert(dData)
    Alert(aArray[3])
    Eval(bBloco) //Eval retorna o valor de um bloco de c�digo

return

/* 

        IDENTIFICADORES DE ESCOPO

Local -> s�o visiveis em qualquer lugar do c�digo fonte
Static -> pode ser declarada dentrou ou fora da fun��o.
Private -> s�o visiveis em todo o programa
Public -> s�o visiveis em todo o programa (n�o costuma ser muito utilizada)

*/
