%Task01
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
%Task02
first(E, [E|_]).
%Task03
last(X, [X]).
last(X, [_|T]) :- last(X, T).
%Task04
penultimate(X, [X,_]).
penultimate(X, [_|T]) :- penultimate(X, T).
%Task05
del_k(X, [X|T], 1, T).
del_k(X, [H|T], K, [H|R]) :- K > 1, K1 is K - 1, del_k(X, T, K1, R).
