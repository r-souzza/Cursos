#include 'protheus.ch'
#include 'parmtype.ch'

// PROGRAMAS DE ATUALIZAÇÃO -> TELA CUSTOMIZADA PARA MODIFICAR CADASTROS

// MODELO 1: AXCADASTRO (TELA CHEIA) EX: CADASTRO DE CLIENTE
// MODELO 2: APENAS UMA TABELA (DADOS SE REPETEM). EX: PEDIDO DE COMPRA
// MODELO 3: DUAS TABELAS, CABEÇALHO E ITENS

user function modelo1()
        Local cAlias := "SB1"
        Local cTitulo := "Cadastro AXCadastro"
        Local cVldExc := ".T."
        Local cVldalt := ".T."

        AxCadastro(cAlias, cTitulo, cVldExc, cVldalt)


return Nil
