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
