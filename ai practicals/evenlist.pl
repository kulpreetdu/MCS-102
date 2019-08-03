len([],0).
len([_H|T],N):-len(T,N1),N1 is N+1.
even(L):-len(L,R),R mod 2=:=0.
