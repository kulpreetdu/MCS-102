
%Calculate factorial
fac(0,1):-!.
fac(1,1):-!.
fac(N,R):-M is N-1, fac(M,R1), R is N*R1.
