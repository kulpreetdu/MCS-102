max(X,Y,R):-X>=Y,R is X.
max(_X,Y,R):-R is Y.
maxlist([X],X).
maxlist([X,Y|T],M):-max(X,Y,R),maxlist([R,T],M).
