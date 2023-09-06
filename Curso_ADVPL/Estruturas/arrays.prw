#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


// Manipulação de Arrays

user Function vetores()
    /*
        AADD () - Permite a inserção de um item em um Array ja existente
        AINS () - Permite a inserção de um elemento em qualquer posição do Array
        ACLONE () - Realiza a cópia de um Array para outro
        ADEL () - Permite a exclusão de um elemento do Array, tornando o ultimo valor
        ASIZE () - Redefine a estrutura de um Array pré-existente, adicionando ou removendo
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
