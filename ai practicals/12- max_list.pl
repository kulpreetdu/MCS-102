max([H],H).
max([H|T],H):- max(T,K), H>=K.
max([H|T],R):- max(T,R), R>H.
