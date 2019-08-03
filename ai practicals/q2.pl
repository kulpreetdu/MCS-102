

%multiplication table
mul(N):-mul(N,1).
mul(N,R):-R=<10, X is N*R, write(N),write(" X "),write(R),write(" is "), write(X),write("\n"),R1 is R+1, mul(N,R1).
mul(N,11).
