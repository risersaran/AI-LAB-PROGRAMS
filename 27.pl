% Heuristic function (distance from current state to the goal)
heuristic(state(X, Y), H) :-
    goal(GX, GY),
    H is sqrt((X - GX)^2 + (Y - GY)^2).

% Actions to move from one state to another
move(state(X, Y), state(NewX, NewY)) :-
    valid_move(X, Y, NewX, NewY).

valid_move(X, Y, NewX, NewY) :-
    % Define valid moves based on the problem requirements
    % For example, moving one step in any direction
    NewX is X + 1,
    NewY is Y.

% Goal state
goal(3, 4).

% Best-First Search algorithm
best_first_search(State, Path) :-
    best_first_search_internal([State-[State]], Path).

best_first_search_internal([CurrentPath-[_ | CurrentState] | _], Path) :-
    goal(CurrentState),
    reverse(CurrentPath, Path).

best_first_search_internal([CurrentPath-[CurrentState | _] | Rest], Solution) :-
    findall(
        [NewState, CurrentState | CurrentPath] - [NewState | CurrentState],
        (move(CurrentState, NewState), \+ member(NewState, CurrentState)),
        Successors
    ),
    append(Rest, Successors, NewQueue),
    keysort(NewQueue, SortedQueue),
    best_first_search_internal(SortedQueue, Solution).


