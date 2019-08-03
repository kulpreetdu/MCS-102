len([],0).
len([H|T],R):- len(T,R1),R is R1+1.
odd(L):- len(L,C), C mod 2 =\= 0.