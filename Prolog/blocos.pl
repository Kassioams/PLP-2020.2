piramide(Blocos,Contador,R):-
        Blocos<Contador,
        write(R).
piramide(Blocos, Contador,R):-
        Bloco is Blocos-Contador,
        Contar is Contador+1,
        R1 is R+1,
        piramide(Bloco, Contar, R1).

main:- read(X),
        piramide(X,1,0), halt.
