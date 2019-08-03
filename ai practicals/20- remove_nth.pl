rem(1,[H|L],L).
rem(N,[H|T],[H|T2]):- M is N-1, rem(M,T,T2).
