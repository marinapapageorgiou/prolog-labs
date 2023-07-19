%-----------------------------------------------------------------------------------------

%-- ASKHSH 1

%majority(L,C) :- fail. 

majority([first|last],X).






%-----------------------------------------------------------------------------------------

%-- ASKHSH 2

%expand(L,E) :- fail. 

expand([],E) :-	E = [0].
expand([H|T],E) :-	/*( pow2(lengthList([H|T],E))
					-> 
					E = [H|T] 
					;*/
					%pow2(lengthList([H|Q],E)),
					insert(0,[H|T],[H|Q]),
					%expand([H|Q],E),
					lengthList([H|Q],K),
					pow2(K),
					E = [H|Q].	
	
lengthList([],0).									% length of a list
lengthList([H|T],E) :-	lengthList(T,M),
						E is M+1.


pow2(X) :-	X > 0 ,       							%find if lengthList is power of 2
			X is X /\ (-X). 


insert(0,[],[0]).									%add 0 at the end of a list
insert(0,[H|T],[H|Q]) :- conc([H|T],[0],[H|Q]).
conc([],L,L).
conc([H|T],L,[H|Q]) :- conc(T,L,Q). 




%-----------------------------------------------------------------------------------------