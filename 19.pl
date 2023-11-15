% Facts representing relationships between students, teachers, subjects, and course codes
teaches(teacher_brown, math101).
teaches(teacher_smith, physics201).
teaches(teacher_jones, literature301).

enrolled(student_john, math101).
enrolled(student_mary, physics201).
enrolled(student_peter, literature301).
enrolled(student_jane, math101).

% Queries to retrieve information about students, teachers, subjects, and course codes

% Query to find the teacher of a given subject
teacher_of_subject(Subject, Teacher) :-
    teaches(Teacher, Subject).

% Query to find students enrolled in a particular subject
students_in_subject(Subject, Students) :-
    enrolled(Students, Subject).

% Query to find subjects a student is enrolled in
subjects_enrolled(Student, Subjects) :-
    enrolled(Student, Subject),
    Subjects = [Subject | Rest],
    subjects_enrolled(Student, Rest).
subjects_enrolled(_, []).

% Example queries
% Who teaches Math 101?
% ?- teacher_of_subject(math101, Teacher).
% Result: Teacher = teacher_brown.

% Which students are enrolled in Literature 301?
% ?- students_in_subject(literature301, Students).
% Result: Students = [student_peter].

% What subjects is student John enrolled in?
% ?- subjects_enrolled(student_john, Subjects).
% Result: Subjects = [math101].

% Note: You can extend the program and add more facts and queries as needed.
