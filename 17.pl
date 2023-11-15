% Base case: Sum of integers from 1 to 0 is 0.
sum_integers(0, 0).

% Recursive case: Sum integers from 1 to N is N plus the sum of integers from 1 to N-1.
sum_integers(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_integers(N1, SubSum),
    Sum is N + SubSum.
