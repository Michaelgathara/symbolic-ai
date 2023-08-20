parent(john, jim).
parent(john, ann).
parent(mary, jim).
parent(mary, ann).
parent(jim, billy).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

male(john).
male(jim).
male(billy).
female(mary).
female(ann).


/*
    To run:

    swipl relation.pl

    > This enters a query system. In the query system, you can enter small queries such as 
    ?- sibling(jim, ann).

    > which would return "true"
*/