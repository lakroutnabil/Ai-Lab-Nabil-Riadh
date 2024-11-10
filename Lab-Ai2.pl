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
%Task06
length([], 0).
length([_|T], N) :- length(T, N1), N is N1 + 1.
%Task07
even(L) :- length(L, N), 0 is N mod 2.
%Task08
concat([], L, L).
concat([H|T], L, [H|R]) :- concat(T, L, R).
%Task09
palindrome(L) :- reverse(L, L).
