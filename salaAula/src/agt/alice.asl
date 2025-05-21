/* Initial beliefs and rules */


/* Initial goals */

!start.

/* Plans */

    
+!start : true 
    <- .print("Cheguei em sala!").

+quemNaSala[source(Agente)] : true
    <- .print("eu estou presente");
    .wait(3000);
    .send(Agente,tell,presente(self)).

+!pegarChave[source(Agente)] :
    <- .print(Agente, "Pediu para eu pegar a chave do laboratorio!");
    pegarChaveAmbiente.