#include 'protheus.ch'
#include 'parmtype.ch'

// EXEMPLO DO USO DE BLOCO DE C�DIGO

User Function bloco()

// Local bBloco := {|| Alert("Ola mundo!")}
// Eval(bBloco) // EVAL - Usado para chamar o bloco de c�digo

// Passagem por par�metros - Bloco de c�digos
Local bBloco := {|cMsg| Alert (cMsg)}
Eval(bBloco, "Ol� mundo!")

// N�o � poss�vel chamar WHILE ou CASE dentro do bloco, apenas IF e outras fun��es

RETURN
