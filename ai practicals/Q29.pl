sen(I,O):-np(I,R),vp(R,O).
np(I,O):-noun(I,O).
np(I,O):-det(I,R),noun(R,O).
vp(I,O):-verb(I,O).
vp(I,O):-verb(I,R),np(R,O).
vp(I,O):-verb(I,R),pp(R,O).
pp(I,O):-p(I,R),np(R,O).
noun(["cathy"|X],X).
noun(["horse"|X],X).
verb(["jump"|X],X).
p(["at"|X],X).
det(["the"|X],X).

