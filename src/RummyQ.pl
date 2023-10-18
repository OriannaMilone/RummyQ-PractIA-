%Rummy Q
%Validador de movimientos en RummyQ
:- use_module(library(clpfd)).

%Caso que evalua la seguidilla
turno_valido([X|R1], [Y|R2]):-
    length([X|R1],L),
    L == 1,
    color(X),
    seguidilla([Y|R2]).

%Caso que evalua el trio
turno_valido([X|R1], [Y|R2]):-
    length([X|R1], L1),
    length([Y|R2], L2),
    L1 =:= L2,
    trio([Y|R2]),
    colores_trio([X|R1]).

colores_trio([X,Y,Z]) :-
    color(X),
    color(Y),
    color(Z),
    all_different([X,Y,Z]).

colores_trio([W,X,Y,Z]):-
    color(W),
    color(X),
    color(Y),
    color(Z),
    all_different([W, X, Y, Z]).

%Reglas
color(1).
color(2).
color(3).
color(4).

%Un trio valido es: 3 o 4 numeros iguales:
trio([X,X,X]).
trio([X,X,X,X]).

% Una seguidilla valida es: minimo 4 numeros (que seguiran un orden
% secuencial):
seguidilla([X|R]):-
    length([X|R], N),
    N >= 4,
    secuencia([X|R]).

secuencia([Y,Z]):-
    Y2 is Y + 1,
    Z == Y2.

secuencia([X,Y|R]):-
    X2 is X +1,
    Y == X2,
    secuencia([Y|R]).
