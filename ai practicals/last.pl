last([],-).
last([X],X).
last([_X|T],R):-last(T,R),!.
