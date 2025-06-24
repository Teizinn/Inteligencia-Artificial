// Agent bob in project salaAula

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true 
    <- .print("E ai galera... na area").
    
+quemNaSala[source(Agente)] : true
    <- .print("Aqui...");
    .send(Agente,tell,presente(self)).

+!pegarChave[source(Agente)] :
    <- .print(Agente, "Pediu para eu pegar a chave do laboratorio!");
    pegarChaveAmbiente.