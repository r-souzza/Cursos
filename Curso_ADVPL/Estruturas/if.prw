#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// ESTRUTURAS DE DECIS�O - IF

user function estrutur()

    Local nNum1 := 22
    Local nNum2 := 100

    if(nNum1 = nNum2)
    MSGINFO("A vari�vel nNum1 � menor ou igual a nNum2")

    elseif(nNum1 > nNum2)
    MSGALERT("A vari�vel nNum1 � maior")

    elseif (nNum1 != nNum2)
    alert("A vari�vel nNum1 � diferente de nNum2")

    // else
    // alert("A vari�vel nNum1 n�o � igual ou menor a nNum2")

    endif

RETURN
