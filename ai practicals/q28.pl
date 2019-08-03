edge(p,q).
edge(q,r).
edge(r,q).
edge(q,s).
edge(s,t).
route(X,X).
route(X,Y):-edge(X,Y),write(X),write(Y).
route(X,Y):-edge(X,Z),route(Z,Y).

