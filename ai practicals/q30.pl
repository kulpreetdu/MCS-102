speaks(bob,russian).
speaks(marry,russian).
speaks(john,english).
speaks(marry,english).
under(X,Y):-speaks(X,L),speaks(Y,L).
