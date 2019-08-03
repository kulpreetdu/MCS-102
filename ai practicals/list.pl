length([],0).
length([Tail],N1):-length(Tail,N1),_N is N1+1.
start:-read(list),length(list,N),write(N).
