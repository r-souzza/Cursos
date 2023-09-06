#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


// Manipula��o de Arrays

user Function vetores()
    /*
        AADD () - Permite a inser��o de um item em um Array ja existente
        AINS () - Permite a inser��o de um elemento em qualquer posi��o do Array
        ACLONE () - Realiza a c�pia de um Array para outro
        ADEL () - Permite a exclus�o de um elemento do Array, tornando o ultimo valor
        ASIZE () - Redefine a estrutura de um Array pr�-existente, adicionando ou removendo
        LEN () - Retorna a quantidade de elementos de um Array

    */
    Local aVetor := {10,20,30}

    // AaDd (aVetor, 40)
    // Alert (Len(aVetor))

    // Ains(aVetor, 2)
    // aVetor[2] := 200    
    // Alert(aVetor[2])
    // Alert(Len(aVetor))

    // aVetor2 := AClone(aVetor)
    // for nCount := 1 To Len(aVetor2)
    //     Alert(aVetor2[nCount])

    // NEXT nCount

    // ADel (aVetor, 2)
    // Alert (aVetor[3])
    // Alert (Len(aVetor))

    ASize (aVetor, 2)
    Alert(Len(aVetor))

     Return
