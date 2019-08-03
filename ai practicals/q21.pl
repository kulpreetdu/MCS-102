power(_X,0,1).
power(X,1,X).
power(X,N,R):-N1 is N-1,power(X,N1,R1),R is X*R1.
