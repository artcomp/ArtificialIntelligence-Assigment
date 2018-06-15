:- use_module(library(lists)).


play :- 
	help(),
	ask_tipo_busca(TB),
	agente(),
	b_setval(tipo_busca,TB),
	busca1(TB),
	busca2(TB),
	busca3(TB).


help:-
format('~n+-----------------------------------------+'),
format('~n Algoritmos de busca no espaco de estados  '),
format('~n                                           '),
format('~n Para executar, digite:                    '),
format('~n ?- play.  <enter>                         '),
format('~n                                           '),
format('~n  Tipos de busca disponiveis				 '),
format('~n      1- aleatoria                         '),
format('~n      2- largura                           '),
format('~n      3- profundidade                      '),
format('~n      4- menor custo                       '),
format('~n      5- melhor estimativa                 '),
format('~n      6- otima (ou A*)                     '),
format('~n+-----------------------------------------+'),
format('~n').


			%%%%%%%%%%%%%%%%%%%  ACOES DO ROBO   %%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%	PRIMEIRO ANDAR	 %%%%%%%%%%%%%%

%% SALA 01
acao(1,[2,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[1,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(1,[3,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[1,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).

%% SALA 02
acao(2,[1,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[2,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(2,[4,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[2,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 03
acao(3,[1,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[3,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(3,[5,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[3,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 04
acao(4,[2,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[4,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(4,[6,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[4,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 05
acao(5,[3,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[5,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(5,[7,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[5,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
%ESCADA
acao(5,[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[5,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],3).



%% SALA 06
acao(6,[4,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[6,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(6,[8,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[6,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 07
acao(7,[5,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[7,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(7,[8,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[7,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%% SALA 08
acao(8,[6,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[8,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(8,[7,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[8,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%%%%%%%%%%%%%%	SEGUNDO ANDAR   %%%%%%%%%%%%%%


%% SALA 09
acao(9,[10,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[9,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%% SALA 10
acao(10,[9,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[10,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(10,[12,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[10,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 11
acao(11,[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(11,[12,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
%ESCADA
acao(11,[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],3).



%% SALA 12
acao(12,[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[12,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(12,[10,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[12,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 13
acao(13,[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(13,[15,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(13,[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%% SALA 14
acao(14,[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(14,[16,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
%ESCADA
acao(14,[5,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],3).



%% SALA 15
acao(15,[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[15,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(15,[16,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[15,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%% SALA 16
acao(16,[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[16,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(16,[15,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[16,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%%%%%%%%%%%%%%	TERCEIRO ANDAR  %%%%%%%%%%%%%%


%% SALA 17
acao(17,[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[17,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
%ESCADA
acao(17,[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[17,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],3).


%% SALA 18
acao(18,[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[18,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 19
acao(19,[17,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(19,[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(19,[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 20
acao(20,[18,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(20,[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
%ESCADA
acao(20,[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],3).


%% SALA 21
acao(21,[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(21,[22,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(21,[23,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).



%% SALA 22
acao(22,[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[22,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(22,[24,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[22,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 23
acao(23,[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[23,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(23,[24,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[23,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%% SALA 24
acao(24,[22,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[24,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(24,[23,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[24,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).



%%%%%%%%%%%%%%	QUARTO ANDAR    %%%%%%%%%%%%%%


%% SALA 25
acao(25,[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[25,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(25,[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[25,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 26
acao(26,[25,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(26,[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
%ESCADA
acao(26,[17,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],3).



%% SALA 27
acao(27,[25,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(27,[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(27,[29,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 28
acao(28,[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(28,[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(28,[30,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 29
acao(29,[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[29,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(29,[31,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[29,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 30
acao(30,[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[30,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(30,[32,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[30,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%% SALA 31
acao(31,[29,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[31,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(31,[32,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[31,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).


%% SALA 32
acao(32,[31,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[32,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],2).
acao(32,[30,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[32,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).


%%%%%% PEGAR BLOCO -- FLAG 77


acao(77,[1,b,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[1,s,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[2,AA,b,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[2,AA,s,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[3,AA,AB,b,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[3,AA,AB,s,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[4,AA,AB,AC,b,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[4,AA,AB,AC,s,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[5,AA,AB,AC,AD,b,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[5,AA,AB,AC,AD,s,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[6,AA,AB,AC,AD,AE,b,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[6,AA,AB,AC,AD,AE,s,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[7,AA,AB,AC,AD,AE,AF,b,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[7,AA,AB,AC,AD,AE,AF,s,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[8,AA,AB,AC,AD,AE,AF,AG,b,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[8,AA,AB,AC,AD,AE,AF,AG,s,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[9,AA,AB,AC,AD,AE,AF,AG,AH,b,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[9,AA,AB,AC,AD,AE,AF,AG,AH,s,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[10,AA,AB,AC,AD,AE,AF,AG,AH,BA,b,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[10,AA,AB,AC,AD,AE,AF,AG,AH,BA,s,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,b,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[11,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,s,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[12,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,b,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[12,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,s,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,b,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[13,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,s,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,b,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[14,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,s,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[15,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,b,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[15,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,s,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[16,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,b,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[16,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,s,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[17,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,b,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[17,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,s,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[18,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,b,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[18,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,s,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,b,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[19,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,s,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,b,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[20,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,s,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,b,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[21,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,s,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[22,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,b,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],[22,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,s,CG,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[23,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,b,CH,DA,DB,DC,DD,DE,DF,DG,DH],[23,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,s,CH,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[24,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,b,DA,DB,DC,DD,DE,DF,DG,DH],[24,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,s,DA,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[25,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,b,DB,DC,DD,DE,DF,DG,DH],[25,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,s,DB,DC,DD,DE,DF,DG,DH],1).
acao(77,[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,b,DC,DD,DE,DF,DG,DH],[26,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,s,DC,DD,DE,DF,DG,DH],1).
acao(77,[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,b,DD,DE,DF,DG,DH],[27,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,s,DD,DE,DF,DG,DH],1).
acao(77,[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,b,DE,DF,DG,DH],[28,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,s,DE,DF,DG,DH],1).
acao(77,[29,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,b,DF,DG,DH],[29,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,s,DF,DG,DH],1).
acao(77,[30,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,b,DG,DH],[30,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,s,DG,DH],1).
acao(77,[31,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,b,DH],[31,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,s,DH],1).
acao(77,[32,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,b],[32,AA,AB,AC,AD,AE,AF,AG,AH,BA,BB,BC,BD,BE,BF,BG,BH,CA,CB,CC,CD,CE,CF,CG,CH,DA,DB,DC,DD,DE,DF,DG,s],1).




%%%%%% SOLTAR BLOCO -- FLAG 80

%acao(80,[13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).

acao(80,[1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s],1).
acao(80,[23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s],1).
acao(80,[24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s],1).
acao(80,[25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s],1).
acao(80,[26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s],1).
acao(80,[27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s],1).
acao(80,[28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s],1).
acao(80,[29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s],1).
acao(80,[30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s],1).
acao(80,[31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s],1).
acao(80,[32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s],[32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b],1).




h1([X|_],D) :- 	sala(X,X1,Y1),
				b_getval(bloco_01,B1),
			  	sala(B1,X2,Y2),
				D is ((sqrt((X2-X1)^2 + (Y2-Y1)^2))/(647)).




h2([X|_],D) :- 	sala(X,X1,Y1),
				b_getval(bloco_02,B2),
			  	sala(B2,X2,Y2),
				D is ((sqrt((X2-X1)^2 + (Y2-Y1)^2))/(647)).




h3([X|_],D) :- 	sala(X,X1,Y1),
				b_getval(bloco_03,B3),
			  	sala(B3,X2,Y2),
				D is ((sqrt((X2-X1)^2 + (Y2-Y1)^2))/(647)).




sucessores1(T,G1:E:C,V,R) :-
   findall(F:H:G:S:[A|C],
	   (acao(A,E,S,G2),
	   
	    not(member(S,V)),
	  %  format('~n S: ~w',[S]),
	    h1(S,H), 
	   % format('~n H: ~w',[H]),
	    G is G1+G2,
	    (T=4 -> F is G
	    ;T=5 -> F is H
	    ;T=6 -> F is G+H
	    ;       F is 0)),R).



sucessores2(T,G1:E:C,V,R) :-
   findall(F:H:G:S:[A|C],
	   (acao(A,E,S,G2),
	    
	    
	    not(member(S,V)),
	    %format('~n S: ~w',[S]),
	    h2(S,H), 
	   % format('~n H: ~w',[H]),
	    G is G1+G2,
	    (T=4 -> F is G
	    ;T=5 -> F is H
	    ;T=6 -> F is G+H
	    ;       F is 0)),R).



   sucessores3(T,G1:E:C,V,R) :-
   findall(F:H:G:S:[A|C],
	   (acao(A,E,S,G2),
	    
	    not(member(S,V)),
	    %format('~n S: ~w',[S]),
	    h3(S,H), 
	    %format('~n H: ~w~n',[H]),
	    G is G1+G2,
	    (T=4 -> F is G
	    ;T=5 -> F is H
	    ;T=6 -> F is G+H
	    ;       F is 0)),R).


insere(1,S,F,NF) :- append(S,F,R),
                    length(R,L), embaralha(L,R,NF), !.
insere(2,S,F,NF) :- append(F,S,NF), !.
insere(3,S,F,NF) :- append(S,F,NF), !.
insere(_,S,F,NF) :- append(S,F,R), sort(R,NF), !.

embaralha(0,F,F) :- !.
embaralha(L,F,[X|NF]) :-
   N is random(L),
   nth0(N,F,X), delete(F,X,R),
   M is L-1,
   embaralha(M,R,NF), !.

tipo(1,aleatoria).
tipo(2,largura).
tipo(3,profundidade).
tipo(4,menor_custo).
tipo(5,melhor_estimativa).
tipo(6,otima).


%%%%%%%%%%%%%%%%			FUNCOES AUXILIARES	


%%% IMPRIMIR LISTA
print( [ ] ).
print( [ X | Y ] ) :- nl, write(X), print(Y).


%%% TAMANHO LISTA
comprimento(0,[]).
comprimento(N,[_|R]):-comprimento(N1,R), N is 1 + N1.


%%%%%%%%%%%%%%%% 		PERCORRE SOLUCAO 1 BLOCO

while1([]).

while1([X|Y]) :- 
	comprimento(N,[X|Y]),
	N > 0, 
	(	X =:= 77 -> pegue(1)
	; 	X =:= 80 -> solte(1)
	;	ande(X)
	),
	
	while1(Y).



%%% PERCORRE SOLUCAO 2 BLOCO

while2([]).

while2([X|Y]) :- 
	comprimento(N,[X|Y]),
	N > 0, 
	(	X =:= 77 -> pegue(2)
	; 	X =:= 80 -> solte(2)
	;	ande(X)
	),
	
	while2(Y).



%%% PERCORRE SOLUCAO 3 BLOCO

while3([]).


while3([X|Y]) :- 
	comprimento(N,[X|Y]),
	N > 0, 
	(	X =:= 77 -> pegue(3)
	; 	X =:= 80 -> solte(3)
	;	ande(X)
	),
	
	while3(Y).




%%%%%%%%%%%%%%%%5			INTERFACE GRAFICA	

ask_posicao_inicial(N) :-
        new(D, dialog('SALA INICIAL ROBO')),
        send(D, append(new(NameItem, text_item('Sala Inicial do Robo (1-32) ')))),
        send(D, append(button(ok, message(D, return, NameItem?selection)))),
        send(D, append(button(cancel, message(D, return, @nil)))),
        send(D, default_button(ok)),
        get(D, confirm, Rval),
        free(D),
        atom_number(Rval, A),
        N = A.



ask_posicao_deposito(N) :-
        new(D, dialog('SALA DE DEPOSITO')),
        send(D, append(new(NameItem, text_item('Sala de Deposito (1-32) ')))),
        send(D, append(button(ok, message(D, return, NameItem?selection)))),
        send(D, append(button(cancel, message(D, return, @nil)))),
        send(D, default_button(ok)),
        get(D, confirm, Rval),
        free(D),
        atom_number(Rval, A),
        N = A.



ask_bloco1(N) :-
        new(D, dialog('POSICAO INICIAL ROBO 01')),
        send(D, append(new(NameItem, text_item('Posicao Inicial do Bloco 1 (1-32) ')))),
        send(D, append(button(ok, message(D, return, NameItem?selection)))),
        send(D, append(button(cancel, message(D, return, @nil)))),
        send(D, default_button(ok)),
        get(D, confirm, Rval),
        free(D),
        atom_number(Rval, A),
        N = A.



ask_bloco2(N) :-
        new(D, dialog('POSICAO INICIAL ROBO 02')),
        send(D, append(new(NameItem, text_item('Posicao Inicial do Bloco 2 (1-32) ')))),
        send(D, append(button(ok, message(D, return, NameItem?selection)))),
        send(D, append(button(cancel, message(D, return, @nil)))),
        send(D, default_button(ok)),
        get(D, confirm, Rval),
        free(D),
        atom_number(Rval, A),
        N = A.



 ask_bloco3(N) :-
        new(D, dialog('POSICAO INICIAL ROBO 03')),
        send(D, append(new(NameItem, text_item('Posicao Inicial do Bloco 3 (1-32) ')))),
        send(D, append(button(ok, message(D, return, NameItem?selection)))),
        send(D, append(button(cancel, message(D, return, @nil)))),
        send(D, default_button(ok)),
        get(D, confirm, Rval),
        free(D),
        atom_number(Rval, A),
        N = A.



 ask_tipo_busca(N) :-
        new(D, dialog('TIPO DE BUSCA')),
        send(D, append(new(NameItem, text_item('Qual busca deseja realizar (1-6) ')))),
        send(D, append(button(ok, message(D, return, NameItem?selection)))),
        send(D, append(button(cancel, message(D, return, @nil)))),
        send(D, default_button(ok)),
        get(D, confirm, Rval),
        free(D),
        atom_number(Rval, A),
        N = A.



posicao_bloco(V,X,Y) :- (V =:= 1 -> 	X = 20 , Y = 540
                     ;   V =:= 2 -> 	X = 20 , Y = 640                                
                     ;   V =:= 10 -> 	X = 20 , Y = 460                                
                     ;   V =:= 9 -> 	X = 20 , Y = 380                                
                     ;   V =:= 18 -> 	X = 20 , Y = 300                                
                     ;   V =:= 17 -> 	X = 20 , Y = 230                                
                     ;   V =:= 26 -> 	X = 20 , Y = 110                                
                     ;   V =:= 25 -> 	X = 20 , Y = 45                                

                     ;   V =:= 3 -> 	X = 105 , Y = 540
                     ;   V =:= 4 -> 	X = 105 , Y = 640                                
                     ;   V =:= 12 -> 	X = 105 , Y = 460                                
                     ;   V =:= 11 -> 	X = 105 , Y = 380                                
                     ;   V =:= 20 -> 	X = 105 , Y = 300                                
                     ;   V =:= 19 -> 	X = 105 , Y = 230                                
                     ;   V =:= 28 -> 	X = 105 , Y = 110                                
                     ;   V =:= 27 -> 	X = 105 , Y = 45     


                     ;   V =:= 5 -> 	X = 195 , Y = 540
                     ;   V =:= 6 -> 	X = 195 , Y = 640                                
                     ;   V =:= 14 -> 	X = 195 , Y = 460                                
                     ;   V =:= 13 -> 	X = 195 , Y = 380                                
                     ;   V =:= 22 -> 	X = 195 , Y = 300                                
                     ;   V =:= 21 -> 	X = 195 , Y = 230                                
                     ;   V =:= 30 -> 	X = 195 , Y = 110                                
                     ;   V =:= 29 -> 	X = 195 , Y = 45   


                     ;   V =:= 7 -> 	X = 282 , Y = 540
                     ;   V =:= 8 -> 	X = 282 , Y = 640                                
                     ;   V =:= 16 -> 	X = 282 , Y = 460                                
                     ;   V =:= 15 -> 	X = 282 , Y = 380                                
                     ;   V =:= 24 -> 	X = 282 , Y = 300                                
                     ;   V =:= 23 -> 	X = 282 , Y = 230                                
                     ;   V =:= 32 -> 	X = 282 , Y = 110                                
                     ;   V =:= 31 -> 	X = 282 , Y = 45   

   ).

agente() :-
   
   %carrega_dados_iniciais(RI,DEPOSITO,B1,B2,B3) :- 
   ask_posicao_inicial(RI),
   ask_posicao_deposito(DEPOSITO), 
   ask_bloco1(B1),
   ask_bloco2(B2),
   ask_bloco3(B3),
 

   b_setval(posicao_inicial_robo, RI),
   b_setval(deposito, DEPOSITO),
   b_setval(bloco_01, B1),
   b_setval(bloco_02, B2),
   b_setval(bloco_03, B3),

   inicia,
   
 %% carrega cenario
   new(D,dialog('Agente')),
   send(D,append,bitmap(image('ambiente.bmp'))),
   
%% cria bloco 01
   send(D,display,new(@o1,box(20,20))),
   send(@o1,fill_pattern,colour(yellow)),

%% posiciona bloco


	posicao_bloco(B1, AA,BB),
	
   send(@o1,move,point(AA,BB+25)),


%% cria bloco 02
   send(D,display,new(@o2,box(20,20))),
   send(@o2,fill_pattern,colour(green)),
%% posiciona bloco

	posicao_bloco(B2, CC,DD),
   send(@o2,move,point(CC,DD+5)),
 
 
%% cria bloco 03
   send(D,display,new(@o3,box(20,20))),
   send(@o3,fill_pattern,colour(red)),
 
 %% posiciona bloco
 	posicao_bloco(B3,EE,FF),
   send(@o3,move,point(EE,FF-15)),

%% inicializa o robo
   send(D,append,new(@a,bitmap(image('agente.bmp')))),
 
%% posiciona robo

	posicao_bloco(RI, GG,HH),
   send(@a,move,point(GG,HH)),
   new(@t,timer(1)),
   send(@t,start),
   send(D,open).

:- dynamic pos/2, seg/1.

inicia :-
   forall(member(X,[@t,@a,@o1,@o2,@o3]),free(X)),
   retractall(pos(_,_)),
   retractall(seg(_)),

   b_getval(posicao_inicial_robo,RI),
   b_getval(bloco_01,B1),
   b_getval(bloco_02,B2),
   b_getval(bloco_03,B3),


   assert(pos(agente,RI)),
   assert(pos(1,B1)),
   assert(pos(2,B2)),
   assert(pos(3,B3)).

	porta(1,2).		
	porta(1,3).

	porta(2,1).
	porta(2,4).
	
	porta(3,1).
	porta(3,5).
	
	porta(4,2).
	porta(4,6).

	porta(5,3).
	porta(5,7).
	porta(5,14).

	porta(6,4).
	porta(6,8).
	
	porta(7,5).
	porta(7,8).

	porta(8,6).
	porta(8,7).
	
	porta(9,10).
	
	porta(10,9).
	porta(10,12).
	
	porta(11,20).
	porta(11,13).
	porta(11,12).

	porta(12,11).
	porta(12,10).

	porta(13,11).
	porta(13,14).
	porta(13,15).

	porta(14,13).
	porta(14,16).

	porta(15,13).
	porta(15,16).

	porta(16,15).	
	porta(16,14).
	
	porta(17,26).
	porta(17,19).

	porta(18,20).

	porta(19,17).
	porta(19,20).
	porta(19,21).

	porta(20,19).
	porta(20,18).
	porta(20,11).

	porta(21,19).
	porta(21,23).
	porta(21,22).

	porta(22,21).
	porta(22,24).

	porta(23,21).
	porta(23,24).

	porta(24,22).
	porta(24,23).

	porta(25,27).
	porta(25,26).
	
	porta(26,25).
	porta(26,28).
	porta(26,17).
	
	porta(27,25).
	porta(27,29).
	porta(27,28).
	
	porta(28,26).
	porta(28,30).
	porta(28,27).
	
	porta(29,27).
	porta(29,31).
	
	porta(30,28).
	porta(30,32).
	
	porta(31,29).
	porta(31,32).
	
	porta(32,31).
	porta(32,30).
	


passagem(X,Y) :- porta(X,Y).
passagem(X,Y) :- porta(Y,X).

rota(X,X,[X]) :- !.
rota(X,Y,[X|R]) :- passagem(X,Z), rota(Z,Y,R).

% comandos para o agente
ande(L) :- 
   pos(agente,L), !.
ande(L) :- 
   retract(pos(agente,P)), 
   assert(pos(agente,L)), 
   length(R,_), 
   rota(P,L,R), 
   siga(R), !.

pegue(O) :- 
   seg(O), !.
pegue(O) :-
   pos(O,P), 
   ande(P),         
   retract(pos(O,_)), 
   assert(seg(O)),
   get(@a,position,X),
   obj(O,No,_),
   send(No,move,X), !. 

solte(O) :- 
   not(seg(O)), !.
solte(O) :- 
   pos(agente,P), 
   %not(member(P,[5,6])),    
  % not(member(P,[])),    
   retract(seg(O)), 
   assert(pos(O,P)), 
   get(@a,position,point(X,Y)),
   obj(O,No,Yo), X1 is X-20, Y1 is Y+Yo,
   send(No,move,point(X1,Y1)), !. 

siga([]).
siga([S|R]) :- mova(S), send(@t,delay), siga(R).

mova(S) :- 
   sala(S,X,Y), 
   forall(seg(O),(obj(O,No,_),send(No,move,point(X,Y)))),
   send(@a,move,point(X,Y)).


   sala(25,  40,  40).
   sala(27, 125,  40).
   sala(29, 210,  40).
   sala(31, 295,  40).
   sala(26,  40, 125).
   sala(28, 125, 125).
   sala(30, 210, 125).
   sala(32, 295, 125).
   sala(17,  40, 210).
   sala(19, 125, 210).
   sala(21, 210, 210).
   sala(23, 295, 210).
   sala(18,  40, 295).
   sala(20, 125, 295).
   sala(22, 210, 295).
   sala(24, 295, 295).
   sala(9,  40,  380).
   sala(11, 125, 380).
   sala(13, 210, 380).
   sala(15, 295, 380).
   sala(10,  40, 465).
   sala(12, 125, 465).
   sala(14, 210, 465).
   sala(16, 295, 465).
   sala(1,  40,  550).
   sala(3, 125,  550).
   sala(5, 210,  550).
   sala(7, 295,  550).
   sala(2,  40,  635).
   sala(4, 125,  635).
   sala(6, 210,  635).
   sala(8, 295,  635).

obj(1, @o1, -20).
obj(2, @o2,   0).
obj(3, @o3, +20).


						%%%%%  BUSCA PARA A PRIMEIRA CAIXA


%	BUSCA

busca1(T) :-
   inicial1(E),

   b_getval(posicao_inicial_robo,RI),
   b_getval(bloco_01,B1),
   
   % nth0(?Index, ?List, ?Elem)
   nth0(B1,E,'b'),

   % nth0(?Index, ?List, ?Elem)
   nth0(0,E,RI),

   busca1(T,[_:_:0:E:[]],[],P:G),
   tipo(T,N),
   A = P,
   
   
   	format('~nBUSCA DO PRIMEIRO BLOCO'),
	format('~n~n     Busca do Tipo.: ~w~n',[N]),
   	format('~n     Plano: ~w',[P]),
   	format('~n     Custo: ~w~n',[G]),
   	while1(A).


busca1(_,[_:_:G:E:C|_],_,P:G) :-
   meta1(E),
   b_getval(deposito, DEPOSITO),

 % nth0(?Index, ?List, ?Elem)
   nth0(DEPOSITO,E,'b'),

   % nth0(?Index, ?List, ?Elem)
   nth0(0,E,DEPOSITO),


    !,
   reverse(C,P).

busca1(T,[_:_:G:E:C|F],V,P) :-
   sucessores1(T,G:E:C,V,S),
   insere(T,S,F,NF),
   union([E],V,NV),
   busca1(T,NF,NV,P).




						%%%%%  BUSCA PARA A SEGUNDA CAIXA

busca2(T) :-
   inicial2(E),

 
   b_getval(bloco_02,B2),
   b_getval(deposito,DEPOSITO),

   % nth0(?Index, ?List, ?Elem)
   nth0(B2,E,'b'),

   % nth0(?Index, ?List, ?Elem)
   nth0(0,E,DEPOSITO),


   busca2(T,[_:_:0:E:[]],[],P:G),
   tipo(T,N),
   A = P,

   
   format('~nBUSCA DO SEGUNDO BLOCO'),
   format('~n~n     Busca do Tipo.: ~w~n',[N]),
   format('~n     Plano: ~w',[P]),
   format('~n     Custo: ~w~n',[G]),
   while2(A).

busca2(_,[_:_:G:E:C|_],_,P:G) :-
   meta2(E),
    b_getval(deposito, DEPOSITO),

 % nth0(?Index, ?List, ?Elem)
   nth0(DEPOSITO,E,'b'),

   % nth0(?Index, ?List, ?Elem)
   nth0(0,E,DEPOSITO),


   !,
   reverse(C,P).

busca2(T,[_:_:G:E:C|F],V,P) :-
   sucessores2(T,G:E:C,V,S),
   insere(T,S,F,NF),
   union([E],V,NV),
   busca2(T,NF,NV,P).


	%%%%%  BUSCA PARA A TERCEIRA CAIXA


%	BUSCA

busca3(T) :-
   inicial3(E),

   b_getval(bloco_03,B3),
   b_getval(deposito, DEPOSITO),
   
   % nth0(?Index, ?List, ?Elem)
   nth0(B3,E,'b'),

   % nth0(?Index, ?List, ?Elem)
   nth0(0,E,DEPOSITO),


   busca3(T,[_:_:0:E:[]],[],P:G),
   tipo(T,N),
   A = P,
   
   format('~nBUSCA DO TERCEIRO BLOCO'),
   format('~n~n     Busca do Tipo.: ~w~n',[N]),	
   format('~n     Plano: ~w',[A]),
   format('~n     Custo: ~w~n',[G]),
   while3(P).

busca3(_,[_:_:G:E:C|_],_,P:G) :-
   meta3(E),
    b_getval(deposito, DEPOSITO),

 % nth0(?Index, ?List, ?Elem)
   nth0(DEPOSITO,E,'b'),

   % nth0(?Index, ?List, ?Elem)
   nth0(0,E,DEPOSITO),


   !,
   reverse(C,P).

busca3(T,[_:_:G:E:C|F],V,P) :-
   sucessores3(T,G:E:C,V,S),
   insere(T,S,F,NF),
   union([E],V,NV),
   busca3(T,NF,NV,P).







inicial1([1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial1([2,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([3,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial1([4,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([5,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial1([6,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([7,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([8,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial1([9,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([10,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([11,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







inicial1([12,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial1([13,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial1([14,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial1([15,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial1([16,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







inicial1([17,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial1([18,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial1([19,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial1([20,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial1([21,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial1([22,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([23,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([24,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([25,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([26,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([27,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([28,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([29,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([30,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([31,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial1([32,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta1([1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta1([2,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).

meta1([3,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta1([4,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([5,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta1([6,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([7,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([8,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta1([9,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([10,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([11,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







meta1([12,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta1([13,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta1([14,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta1([15,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta1([16,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







meta1([17,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta1([18,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta1([19,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta1([20,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta1([21,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta1([22,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([23,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([24,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([25,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([26,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([27,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([28,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([29,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([30,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([31,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta1([32,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta1([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial2([2,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).

inicial2([3,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial2([4,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([5,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial2([6,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([7,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([8,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial2([9,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([10,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([11,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







inicial2([12,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial2([13,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial2([14,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial2([15,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial2([16,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







inicial2([17,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial2([18,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial2([19,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial2([20,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial2([21,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial2([22,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([23,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([24,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([25,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([26,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([27,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([28,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([29,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([30,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([31,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial2([32,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta2([1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta2([2,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).

meta2([3,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta2([4,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([5,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta2([6,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([7,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([8,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta2([9,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([10,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([11,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







meta2([12,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta2([13,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta2([14,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta2([15,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta2([16,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







meta2([17,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta2([18,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta2([19,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta2([20,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta2([21,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta2([22,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([23,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([24,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([25,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([26,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([27,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([28,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([29,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([30,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([31,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta2([32,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta2([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial3([1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial3([2,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).

inicial3([3,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial3([4,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([5,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial3([6,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([7,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([8,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



inicial3([9,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([10,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([11,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







inicial3([12,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial3([13,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial3([14,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial3([15,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial3([16,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







inicial3([17,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial3([18,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial3([19,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





inicial3([20,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial3([21,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






inicial3([22,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([23,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([24,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([25,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([26,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([27,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([28,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([29,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([30,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([31,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




inicial3([32,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
inicial3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta3([1,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([1,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta3([2,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([2,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).

meta3([3,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([3,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta3([4,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([4,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([5,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([5,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta3([6,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([6,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([7,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([7,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([8,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([8,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



meta3([9,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([9,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([10,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([10,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([11,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([11,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







meta3([12,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([12,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta3([13,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([13,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta3([14,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([14,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta3([15,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([15,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta3([16,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([16,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).







meta3([17,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([17,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta3([18,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([18,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta3([19,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([19,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).





meta3([20,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([20,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta3([21,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([21,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).






meta3([22,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([22,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([23,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([23,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([24,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([24,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([25,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([25,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([26,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([26,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([27,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([27,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([28,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([28,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([29,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([29,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([30,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([30,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([31,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([31,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).




meta3([32,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b,s]).
meta3([32,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,b]).



