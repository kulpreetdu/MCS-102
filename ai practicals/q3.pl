even([H|T],C):-H mod 2 =:=0, even(T,C1),C is C1+1.
