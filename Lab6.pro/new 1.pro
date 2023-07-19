divisor(N, D) :-							% list of the divisors
    between(1, N, D),
    0 is N mod D.
	
list_max([P|T], O) :- list_max(T, P, O).	%max element in list

list_max([], P, P).
list_max([H|T], P, O) :-
    (    H > P
    ->   list_max(T, H, O)
    ;    list_max(T, P, O)).