member(X,[X|T]).
member(X,[H|T]):-member(X,T).
a([],[]).
a([H|T],Res):-member(H,T),a(T,Res).
a([H|T],[H,Res]):-a(T,Res).
