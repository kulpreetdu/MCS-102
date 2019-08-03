con([],L2,L2).
con(L1,[],L1).
con([X|L1],L2,[X|L3]):-con(L1,L2,L3).
rev([],[]).
rev([X|T],R):-rev(T,Z),con(Z,[X],R).
pal(L):-rev(L,R),L=R.
