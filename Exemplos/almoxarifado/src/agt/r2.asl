viagens(3).
 
!start.
 
+!start : viagens(Qtd)
<-         
        .print("estou pronto para guardar peças médias e grandes... ").
 
+peca(Tamanho) : viagens(Qtd) & Qtd > 0 & Tamanho = media
<-
        .print("percebi uma peça ", Tamanho, " e vou guarda-la... porque ainda tenho ", Qtd, " viagens possíveis");
        guardarPeca(Tamanho); //ação a ser executada no ambiente, logo no java
        -viagens(Qtd);
        NovaQtd = Qtd - 1;
        +viagens(NovaQtd).
 
+peca(Tamanho) : viagens(Qtd) & Qtd > 0 & Tamanho = grande
<-
        .print("percebi uma peça ", Tamanho, " e vou chamar r1... para me ajudar");
        .send(r1,achieve,peca(Tamanho));
        guardarPeca(Tamanho); //ação a ser executada no ambiente, logo no java
        -viagens(Qtd);
        NovaQtd = Qtd - 1;
        +viagens(NovaQtd).
 
+peca(Tamanho) : true
<- .print("estou sem bateria.... estou me recarregando...");
       .wait(10000);
       -viagens(0);
       +viagens(5).