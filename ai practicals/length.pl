length1([],0).
length1([_H|T],N):-length1(T,N1),N is N1+1.
