#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ARRAYS - VETORES
// ARRAYS S�O COLE��ES DE VALORES, SEMELHANTES A UMA LISTA.
// CADA ITEM EM UM ARRAY � REFERENCIADO PELA INDICA��O DE SUA POSI��O NUMERICA, INICIANDO PELO NUMERO 1.

User Function vetor()

//DECLARANDO AS VARI�VEIS
Local dData := Date()
Local aValores := {"Jo�o", dData, 100}

Alert (aValores[2]) // EXIBE A POSI��O 2 DO ARRAY
Alert (aValores[3]) // EXIBE A POSI��O 3 DO ARRAY


Return
