#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ARRAYS - VETORES
// ARRAYS SÃO COLEÇÕES DE VALORES, SEMELHANTES A UMA LISTA.
// CADA ITEM EM UM ARRAY É REFERENCIADO PELA INDICAÇÃO DE SUA POSIÇÃO NUMERICA, INICIANDO PELO NUMERO 1.

User Function vetor()

//DECLARANDO AS VARIÁVEIS
Local dData := Date()
Local aValores := {"João", dData, 100}

Alert (aValores[2]) // EXIBE A POSIÇÃO 2 DO ARRAY
Alert (aValores[3]) // EXIBE A POSIÇÃO 3 DO ARRAY


Return
