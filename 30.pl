% Facts about family relationships
parent(john, mary).
parent(john, bob).
parent(mary, anne).
parent(bob, carol).

% Rule for defining siblings
siblings(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Backward chaining rule to check if X and Y are siblings
are_siblings(X, Y) :-
    siblings(X, Y),
    write(X), write(' and '), write(Y), write(' are siblings.'), nl.

% Backward chaining rule for goal: Are X and Y siblings?
goal_are_siblings(X, Y) :-
    are_siblings(X, Y).


