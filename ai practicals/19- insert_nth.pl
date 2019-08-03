ins(1,V,L,[V|L]).
ins(N,V,[H|T],[H|T2]):- M is N-1, ins(M,V,T,T2).
