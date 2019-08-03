parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
male(tom).
female(pam).
male(bob).
male(jim).
female(liz).
female(ann).
male(pat).

grandparent(X,Z):- parent(X,Y),parent(Y,Z).
mother(X,Y) :- parent(X,Y),female(X).
father(X,Y) :- parent(X,Y),male(X).
sibling(X,Y):- parent(Z,X),parent(Z,Y),diff1(X,Y).
sister(X,Y) :-sibling(X,Y),female(X),diff1(X,Y) ; sibling(X,Y),female(Y),diff1(X,Y).
diff1(X,Y) :- X\=Y.
grandchild(X,Y) :- grandparent(Y,X).
happy(X) :-parent(X,Y).
aunt(X,Y):- parent(Z,Y), sister(Z,X).
hastwochildren(X,Y):- parent(X,Y),sister(Z,Y).
ancestor(X,Y) :- parent(X,Z),parent(Z,Y).
ancestor(X,Y) :- parent(X,Z),ancestor(Z,Y).




