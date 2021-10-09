julga_senha(X):- tem_letra(X),
              tem_numero(X),
              tem_especial(X),
              write("Senha Forte!").
              
julga_senha(_):-
              write("Senha Fraca!").
              
tem_letra([]):- fail.
tem_letra([H|_]):- atom_string(H,L), char_type(L, alpha).
tem_letra([_|T]):- tem_letra(T).

tem_numero([]):- fail.
tem_numero([H|_]):- atom_string(H,L), char_type(L, digit).
tem_numero([_|T]):- tem_numero(T).

tem_especial([]):- fail.
tem_especial([H|_]):- atom_string(H,L), member(L, ["-" , "*" , "@", "$", "%", "#", "!", "?"]).
tem_especial([_|T]):- tem_especial(T).

main:-
       read_line_to_string(user_input, Senha),
       string_chars(Senha, X),
       julga_senha(X), halt.
