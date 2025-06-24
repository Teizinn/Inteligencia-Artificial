!start.
 
+!start : true 
<- .print("estou pronto para guardar peças pequenas e grandes").
 
+peca(Tamanho) : Tamanho = pequena
<-

        .print("percebi uma peça ", Tamanho, " e vou guarda-la");

        guardarPeca(Tamanho). //ação a ser executada no ambiente, logo no java
 
+!peca(Tamanho)[source(Agente)] : Agente = r2
<-

        .print(Agente," pediu minha ajuda para guardar peça grande e vou atende-lo");

        ajudar(r2).
 