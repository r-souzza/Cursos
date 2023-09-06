#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ESTRUTURAS DE DECISÃO - CASE

user function docase()

    Local cData := "25/12/2017"

    Do CASE // Inicio Case

    Case cData == "20/12/2017"
    Alert ("Não é natal" + cData)

    Case cData == "25/12/2017"
    Alert ("É Natal!")

    OTHERWISE
    MSGALERT("Não sei qual dia é hoje.")

    EndCase // Finalizando o Case

RETURN
