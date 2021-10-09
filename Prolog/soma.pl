paridade(X,R):-
            (X mod 2 =:= 0 -> (X < 0 -> R is X * -1;
             X > 0 -> R is X);
             X mod 2 =:= 1 -> (X < 0 -> R is X;
             X > 0 -> R is X * -1)).
             
soma(Num, Soma):-
    Num =< 0,
    write(Soma).
soma(Num, Soma):-
    Num > 0,
    read(Numero),
    paridade(Numero,R),
    Nsoma is Soma + R,
    Nnum is Num -1,
    soma(Nnum,Nsoma).

main:- read(X), soma(X,0).
