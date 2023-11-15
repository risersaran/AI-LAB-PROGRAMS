% Facts representing the database
dob(john, '1990-05-15').
dob(anna, '1985-11-30').
dob(mary, '2000-02-20').
dob(michael, '1978-07-10').

% Query to retrieve the date of birth for a given person
get_dob(Person, DateOfBirth) :-
    dob(Person, DateOfBirth).

% Query to check if a person is in the database
is_person_in_database(Person) :-
    dob(Person, _).


people_born_on_date(Date, People) :-
    findall(Person, dob(Person, Date), People).
