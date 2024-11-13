% Facts
male(john).
male(mike).
male(jake).
female(susan).
female(lisa).
female(emma).

parent(john, mike).
parent(susan, mike).
parent(john, lisa).
parent(susan, lisa).
parent(mike, emma).
parent(lisa, jake).

% Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
