split(L,E,O):- split(L,1,E,O).
split([],A,[],[]).
split([H|T],A,[H|E],O):- A mod 2 =:= 0, A1 is A+1, split(T,A1,E,O).
split([H|T],A,E,[H|O]):- A mod 2 =\= 0, A1 is A+1, split(T,A1,E,O).
