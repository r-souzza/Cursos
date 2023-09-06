#include 'protheus.ch'
#include 'parmtype.ch'

// EXEMPLO DO USO DE BLOCO DE CÓDIGO

User Function bloco()

// Local bBloco := {|| Alert("Ola mundo!")}
// Eval(bBloco) // EVAL - Usado para chamar o bloco de código

// Passagem por parâmetros - Bloco de códigos
Local bBloco := {|cMsg| Alert (cMsg)}
Eval(bBloco, "Olá mundo!")

// Não é possível chamar WHILE ou CASE dentro do bloco, apenas IF e outras funções

RETURN
