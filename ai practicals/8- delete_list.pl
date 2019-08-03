del(X,[X|Tail],Tail).
del(X,[H|Tail],[H|Tail1]):- del(X,Tail,Tail1).
