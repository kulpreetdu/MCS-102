conc([],L2,L2).
conc(L1,[],L1).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).
rev([],[]).
rev([X|T],R):-rev(T,Z),conc(Z,[X],R).
