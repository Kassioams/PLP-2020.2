remove_ultimo([],[]).
remove_ultimo([_|[]], []).
remove_ultimo([H|T], [H|Novo]):- remove_ultimo(T, Novo).

lista_comprimida(_, [], []).
lista_comprimida(Num, [H|[]], [X|[]]):- X is H * Num.
lista_comprimida(Num, [H|T], [X|Y]):- X is H * Num, 
                                      remove_ultimo(T, Novo),
                                      lista_comprimida(Num, Novo, Y).

palindrome([H|T], L):- reverse([H|T], [H1|T1]),
                       length([H|T], R),
                       (R mod 2 =:= 0 -> append([H|T], [H1|T1], L) ;
                       append([H|T], T1, L)).
                       
div(_, [], []).
div(Num, [H|T], [X|Y]):- X is H/Num,
                         div(Num, T, Y).

list(Num, List, R):- lista_comprimida(Num, List, R).
list(List, Num, R):- palindrome(List, Nova_L),
                     div(Num, Nova_L, R).

main:- read(A),
       read(B),
       list(A, B, R),
       write(R), halt.
