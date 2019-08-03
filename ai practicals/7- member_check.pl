member(X,[X|Tail]).
member(X,[H|Tail]):- member(X,Tail).
