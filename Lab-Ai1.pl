% Task 01
:- dynamic task/4.
% Task 02
create_task(ID, Description, Assignee) :-
    assertz(task(ID, Description, Assignee, false)),
    format('Task ~w created: ~w.~n', [ID, Description]).
% Task 03
assign_task(ID, NewAssignee) :-
    retract(task(ID, Description, _, Completed)),
    assertz(task(ID, Description, NewAssignee, Completed)),
    format('Task ~w assigned to user: ~w.~n', [ID, NewAssignee]).
% Task 04
mark_completed(ID) :-
    retract(task(ID, Description, Assignee, _)),
    assertz(task(ID, Description, Assignee, true)),
    format('Task ~w marked as completed.~n', [ID]).

% Task 05
DisplayTasks :-
    forall(task(ID, Description, Assignee, Completed), (
        format('Task ~w:~n - Description: ~w~n - Assignee: ~w~n - Completion status: ~w~n~n',
        [ID, Description, Assignee, Completed])
    )).
% Task 06
display_tasks_assigned_to(User) :-
    format('Tasks assigned to ~w:~n', [User]),
    forall(task(ID, Description, User, Completed), (
        format('Task ~w:~n - Description: ~w~n - Completion status: ~w~n~n',
        [ID, Description, Completed])
    )).

% Task 07 
display_completed_tasks :-
    writeln('Completed tasks:'),
    forall(task(ID, Description, Assignee, true), (
        format('Task ~w:~n - Description: ~w~n - Assignee: ~w~n~n',
        [ID, Description, Assignee])
    )).
?- create_task(1, 'Implement login functionality', 'Alice').
?- create_task(2, 'Design homepage layout', 'Bob').
?- assign_task(1, 'John').
?- mark_completed(2).
?- display_tasks.
?- display_tasks_assigned_to('Alice').
?- display_completed_tasks.
