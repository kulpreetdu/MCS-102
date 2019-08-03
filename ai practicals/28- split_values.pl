split([],[],[]).
split([H|T],[H|E],O):- H mod 2 =:= 0, split(T,E,O).
split([H|T],E,[H|O]):- H mod 2 =\= 0, split(T,E,O).
