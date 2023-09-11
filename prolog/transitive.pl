/*
    Generally transitive closure in real life acts as a way to define relationships over multiple steps.

    If A > B:
        and B > C:
        Then A > C
*/

rel(1, 2).
rel(2, 3).
rel(3, 4).

transitive(X, Y) :- rel(X, Y).
transitive(X, Y) :- rel(X, Z), rel(Z, Y).
/* Transitive should hold all transitive closures */