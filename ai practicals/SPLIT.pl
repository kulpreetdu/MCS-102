split([],[],[]).
split([X],[X],[]).
split([X,Y|T],[X|T],[Y|T3]):-split(T,_T2,T3).

