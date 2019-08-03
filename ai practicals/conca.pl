con([],L2,L2).
con(L1,[],L1).
con([X|L1],L2,[X|L3]):-con(L1,L2,L3).
