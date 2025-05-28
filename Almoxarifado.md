SMA do Almoxarifado
 
Cenário:
    1) há dois robôs: r1 e r2
    2) peças pequenas, médias e grandes são colocadas na entrada para os robôs guarda-las
    3) r1 guarda peças pequenas e ajuda a guardar peças grandes quando r2 o chama ou invoca
    4) r2 guarda peças médias e grandes
    5) r2 consegue realizar 10 viagens para guardar peças, após isso, precisa recarregar, x ciclos de tempo(Sempre feito em ciclos)
    6) r2 só consegue guardar peças quando não está recarregando. Ou seja, quando chega peça média ou grande, elas ficam empilhadas na entrada
    7) uma peça é disponibilizada na entrada, somente quando a peça anterior que chegou na entrada for guardada
    8) r1 percebe peças pequenas
    9) r2 percebe peças média e grandes