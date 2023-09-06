#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*
        TIPOS DE DADOS

NUMÉRICO: 3 / 21.000 / 0.4 / 200000
LÓGICO: .T. / .F. 
CARACTERE: "D" / 'C'
DATA: DATE()
ARRAY: {}"VALOR1", "VALOR2", "VALOR3"} -> (Unidimensionais = Vetores, Multidimensionais = Matrizes)
BLOCO DE CÓDIGO: {||VALOR := 1, MsgAlert("Valor é igual a "+cValToChar (VALOR))} -> a variável executa uma linha de código

*/

user function VARIAVEL()

//DECLARANDO AS VARIÁVEIS

    Local nNum := 28 // LOCAL -> escopo onde a variável é definida, se não inserir 'Local' ela será definida como PRIVATE.
    Local lLogic := .T.
    Local cCarac := "String"
    Local dData := DATE()
    Local aArray := {"Joao", "Maria", "Jose"}
    Local bBloco := {||nValor := 2, MSGALERT("O número é igual a: "+ cValToChar(nValor))} //cValToChar imprime uma variável como string

//EXIBINDO AS VARIÁVEIS

    Alert(nNum) // Número não precisa de cValToChar
    Alert(lLogic)
    Alert(CVALTOCHAR(cCarac)) // Usar cValToChar para imprimir caractere
    Alert(dData)
    Alert(aArray[3])
    Eval(bBloco) //Eval retorna o valor de um bloco de código

return

/* 

        IDENTIFICADORES DE ESCOPO

Local -> são visiveis em qualquer lugar do código fonte
Static -> pode ser declarada dentrou ou fora da função.
Private -> são visiveis em todo o programa
Public -> são visiveis em todo o programa (não costuma ser muito utilizada)

*/
