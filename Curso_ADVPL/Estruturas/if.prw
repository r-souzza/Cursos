#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ESTRUTURAS DE DECISÃO - IF

user function estrutur()

    Local nNum1 := 22
    Local nNum2 := 100

    if(nNum1 = nNum2)
    MSGINFO("A variável nNum1 é menor ou igual a nNum2")

    elseif(nNum1 > nNum2)
    MSGALERT("A variável nNum1 é maior")

    elseif (nNum1 != nNum2)
    alert("A variável nNum1 é diferente de nNum2")

    // else
    // alert("A variável nNum1 não é igual ou menor a nNum2")

    endif

RETURN
