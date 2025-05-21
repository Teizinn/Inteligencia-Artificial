/* Initial beliefs and rules */


/* Initial goals */

!start.

/* Plans */

    
+!start : true 
    <- .print("Bom dia turma... Vou fazer a chamada!");
        .broadcast(tell, quemNaSala).

+presente(Aluno) : laboratorioFechado
    <- .print(Aluno, "Pega a chave do laboratorio?");
        .send(Aluno, achieve, pegarChave);
        .laboratorioFechado.
