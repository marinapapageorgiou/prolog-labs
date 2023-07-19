%nat:Is X natural?,nat2:Is X,Y naturals?
nat(0).
nat(s(X)) :- nat(X).
nat2(0,s(Y)) :- nat(Y).
nat2(s(X),s(Y)) :- nat2(X,Y). 

%Summary of X+Y=Z
sum(X,0,X) :- nat(X).
sum(X,s(Y),s(Z)) :- sum(X,Y,Z).

%Minus of X-Y=Z is same as Y+Z=X
minus(X,Y,Z) :- sum(Y,Z,X). 

%Multiplication of X*Y,add X+0(Z) Y times(recursive)
mult(X,0,0).
mult(X,s(Y),D):-mult(X,Y,Z), sum(X,Z,D).

%Divide,check special occasions,add to W the s(0)(1) recursive.
divide(X,Y,D) :- div(X,Y,D,_).
div(s(X),0,undefined,_).
div(0,s(Y),0,_).
div(0,0,undefined,_).
div(X,Y,0,X) :- X \== 0,Y \== 0,nat2(X,Y).
div(X,Y,D,L) :- X \== 0,Y \== 0,minus(X,Y,Z),div(Z,Y,W,L),sum(W,s(0),D).

/*
s(0).
s(X):- X.

plus(0, Y, Y).
plus(s(X), Y, s(Z)):- plus(X , Y , Z).

minus(A, B, C) :- plus(C, B, A).

divide(_, 0, 0).
divide(0, _ , 0).
divide(X, s(0), X).
divide(A, B, s(N)) :- minus(A, B, R), divide(R, B, N).
*/


