/* Enunciado
Cinco amigos que trabalham juntos estão curtindo um happy hour. Rache a cuca para descobrir as características deles.

1  Em uma das pontas está o homem que gosta de Sinuca.
2  Reginaldo é o mais novo.
3  Hugo está ao lado de quem está bebendo a cerveja Inglesa.
4  Kleber está em algum lugar entre o homem da gravata Azul e quem trabalha na Administração, nessa ordem.
5  O homem da gravata Azul está ao lado de quem está bebendo a cerveja Inglesa.
6  Quem gosta de Futebol está exatamente à direita de quem trabalha na Administração.
7  O amigo que trabalha na Contabilidade está ao lado do que gosta de Corrida.
8  O homem da gravata Verde está em algum lugar à esquerda de quem trabalha no setor Comercial.
9  Em uma das pontas está o homem que trabalha no Rh.
10 Quem gosta de Natação está exatamente à direita de quem esta bebendo a cerveja Belga.
11 O homem que trabalha na Administração está ao lado de quem está bebendo a cerveja Irlandesa.
12 O amigo mais velho está bebendo a cerveja Brasileira.
13 O homem da gravata Branca está exatamente à direita de quem trabalha na Administração.
14 O homem da gravata Vermelha trabalha no setor Comercial.
15 O amigo que está bebendo a cerveja Alemã está exatamente à esquerda de quem tem 28 anos.
16 Na primeira posição está quem trabalha no setor de Vendas.
17 O homem da gravata Vermelha está em algum lugar à esquerda de quem está bebendo a cerveja Alemã.
18 Quem tem 34 anos está ao lado de quem gosta de Corrida.
19 Tiago está na segunda posição.
20 O amigo de 30 anos está bebendo a cerveja Inglesa.
21 O homem da gravata Verde está ao lado de Tiago.
22 Quem gosta de Basquete está exatamente à esquerda de quem tem 28 anos.
*/



resolve(S) :-
    S = mesa(amigo(_,_,_,_,_,_),
             amigo(_,_,_,_,_,_),
             amigo(_,_,_,_,_,_),
             amigo(_,_,_,_,_,_),
             amigo(_,_,_,_,_,_)
            ),

%Em uma das pontas está o homem que gosta de Sinuca.1
        pessoa(A,S),
        alguma_ponta(A,S),
        esporte(A,sinuca),

%Reginaldo é o mais novo.2
        pessoa(B,S),
        nome(B,reginaldo),
        idade(B,mais_novo),

%Hugo está ao lado de quem está bebendo a cerveja Inglesa.3      
        pessoa(C,S),
        nome(C,hugo),
        ao_lado(C,D,S),
        cerveja(D,inglesa),

%Kleber está em algum lugar entre o homem da gravata Azul e quem trabalha na Administração, nessa ordem.4
        pessoa(E,S),
        nome(E,kleber),
        algum_lugar_entre(E,F,G,S),
        pessoa(F,S),
        pessoa(G,S),
        gravata(F,azul),
        setor(G,administracao),
        
%O homem da gravata Azul está ao lado de quem está bebendo a cerveja Inglesa.5
        pessoa(H,S),
        gravata(H,azul),
        ao_lado(H,I,S),
        cerveja(I,inglesa),

%Quem gosta de Futebol está exatamente à direita de quem trabalha na Administração.6
        pessoa(J,S),
        esporte(J,futebol),
        exatamente_a_direita(J,K,S),
        setor(K,administracao),

%O amigo que trabalha na Contabilidade está ao lado do que gosta de Corrida.7
        pessoa(L,S),
        setor(L,contabilidade),
        ao_lado(L,M,S),
        esporte(M,corrida),

%O homem da gravata Verde está em algum lugar à esquerda de quem trabalha no setor Comercial.8
        pessoa(O,S),
        gravata(O,verde),
        algum_lugar_esquerda(O,P,S),
        setor(P,comercial),

%Em uma das pontas está o homem que trabalha no Rh.9
        pessoa(Q,S),
        alguma_ponta(Q,S),
        setor(Q,rh),

%Quem gosta de Natação está exatamente à direita de quem esta bebendo a cerveja Belga.10        
        pessoa(A1,S),
        esporte(A1,natacao),
        exatamente_a_direita(A1, A2,S),
        cerveja(A2,belga),

%O homem que trabalha na Administração está ao lado de quem está bebendo a cerveja Irlandesa.11        
        pessoa(A3,S),
        setor(A3,administracao),
        ao_lado(A3,A4,S),
        cerveja(A4,irlandesa),

%O amigo mais velho está bebendo a cerveja Brasileira.12
        pessoa(A5,S),
        idade(A5,mais_velho),
        cerveja(A5,brasileira),

%O homem da gravata Branca está exatamente à direita de quem trabalha na Administração.13
        pessoa(A6,S),
        gravata(A6,branca),
        exatamente_a_direita(A6,A7,S),
        setor(A7,administracao),

%O homem da gravata Vermelha trabalha no setor Comercial.14
        pessoa(A8,S),
        gravata(A8,vermelha),
        setor(A8,comercial),

%O amigo que está bebendo a cerveja Alemã está exatamente à esquerda de quem tem 28 anos.15
        pessoa(A9,S),
        cerveja(A9,alema),
        exatamente_a_esquerda(A9,B1,S),
        pessoa(B1,S),
        idade(B1,vinte_oito),

%Na primeira posição está quem trabalha no setor de Vendas.16
        pessoa(B2,S),
        primeira_posicao(B2,S),
        setor(B2,vendas),

%O homem da gravata Vermelha está em algum lugar à esquerda de quem está bebendo a cerveja Alemã.17
        pessoa(B3,S),
        gravata(B3,vermelha),
        algum_lugar_esquerda(B3,B4,S),
        cerveja(B4,alema),

%Quem tem 34 anos está ao lado de quem gosta de Corrida.18
        pessoa(B5,S),
        idade(B5,trinta_quatro),
        ao_lado(B5,B6,S),
        esporte(B6,corrida),

%Tiago está na segunda posição.19
        pessoa(B7,S),
        nome(B7,tiago),
        segunda_posicao(B7,S),

%O amigo de 30 anos está bebendo a cerveja Inglesa.20                     
        pessoa(B8,S),
        idade(B8,trinta),                          
        cerveja(B8,inglesa),

%O homem da gravata Verde está ao lado de Tiago.21
        pessoa(B9,S),
        gravata(B9,verde),
        ao_lado(B9,C1,S),
        nome(C1,tiago),

%Quem gosta de Basquete está exatamente à esquerda de quem tem 28 anos.22
        pessoa(C2,S),
        esporte(C2,basquete),
        exatamente_a_esquerda(C2,C3,S),
        idade(C3,vinte_oito),

%Restantes, que nao foram inclusos.
        pessoa(C4,S),
        nome(C4,david),

        pessoa(C5,S),
        gravata(C5,amarela).



pessoa(X,mesa(X,_,_,_,_)).
pessoa(X,mesa(_,X,_,_,_)).
pessoa(X,mesa(_,_,X,_,_)).
pessoa(X,mesa(_,_,_,X,_)).
pessoa(X,mesa(_,_,_,_,X)).

gravata(amigo(X,_,_,_,_,_),X).
nome(amigo(_,X,_,_,_,_),X).
cerveja(amigo(_,_,X,_,_,_),X).
idade(amigo(_,_,_,X,_,_),X).
setor(amigo(_,_,_,_,X,_),X).
esporte(amigo(_,_,_,_,_,X),X).

alguma_ponta(X,mesa(X,_,_,_,_)).
alguma_ponta(X,mesa(_,_,_,_,X)).


algum_lugar_esquerda(X,Y,mesa(X,Y,_,_,_)).
algum_lugar_esquerda(X,Y,mesa(X,_,Y,_,_)).
algum_lugar_esquerda(X,Y,mesa(X,_,_,Y,_)).
algum_lugar_esquerda(X,Y,mesa(X,_,_,_,Y)).
algum_lugar_esquerda(X,Y,mesa(_,X,Y,_,_)).
algum_lugar_esquerda(X,Y,mesa(_,X,_,Y,_)).
algum_lugar_esquerda(X,Y,mesa(_,X,_,_,Y)).
algum_lugar_esquerda(X,Y,mesa(_,_,X,Y,_)).
algum_lugar_esquerda(X,Y,mesa(_,_,X,_,Y)).
algum_lugar_esquerda(X,Y,mesa(_,_,_,X,Y)).

exatamente_a_direita(X,Y,mesa(Y,X,_,_,_)).
exatamente_a_direita(X,Y,mesa(_,Y,X,_,_)).
exatamente_a_direita(X,Y,mesa(_,_,Y,X,_)).
exatamente_a_direita(X,Y,mesa(_,_,_,Y,X)).

exatamente_a_esquerda(X,Y,mesa(X,Y,_,_,_)).
exatamente_a_esquerda(X,Y,mesa(_,X,Y,_,_)).
exatamente_a_esquerda(X,Y,mesa(_,_,X,Y,_)).
exatamente_a_esquerda(X,Y,mesa(_,_,_,X,Y)).

algum_lugar_entre(X,Y,Z,mesa(Y,X,Z,_,_)).
algum_lugar_entre(X,Y,Z,mesa(Y,X,_,Z,_)).
algum_lugar_entre(X,Y,Z,mesa(Y,X,_,_,Z)).
algum_lugar_entre(X,Y,Z,mesa(Y,_,X,Z,_)).
algum_lugar_entre(X,Y,Z,mesa(Y,_,X,_,Z)).
algum_lugar_entre(X,Y,Z,mesa(Y,_,_,X,Z)).
algum_lugar_entre(X,Y,Z,mesa(_,Y,X,Z,_)).
algum_lugar_entre(X,Y,Z,mesa(_,Y,X,_,Z)).
algum_lugar_entre(X,Y,Z,mesa(_,Y,_,X,Z)).
algum_lugar_entre(X,Y,Z,mesa(_,_,Y,X,Z)).

ao_lado(X,Y,mesa(Y,X,_,_,_)).
ao_lado(X,Y,mesa(_,Y,X,_,_)).
ao_lado(X,Y,mesa(_,_,Y,X,_)).
ao_lado(X,Y,mesa(_,_,_,Y,X)).
ao_lado(X,Y,mesa(X,Y,_,_,_)).
ao_lado(X,Y,mesa(_,X,Y,_,_)).
ao_lado(X,Y,mesa(_,_,X,Y,_)).
ao_lado(X,Y,mesa(_,_,_,X,Y)).

segunda_posicao(X,mesa(_,X,_,_,_)).

primeira_posicao(X,mesa(X,_,_,_,_)).