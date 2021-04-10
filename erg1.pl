person(ian_fox).
person(ann_fox).
person(pat_fox).
person(jim_fox).
person(kostas_agorou).
person(gianna_agorou).
person(maria_agorou).
person(marko_plakou).


birthday(ian_fox,7,may,1950).
birthday(ann_fox,9,may,1951).
birthday(pat_fox,6,may,1973).
birthday(jim_fox,5,may,1973).
birthday(kostas_agorou,9,may,1943).
birthday(gianna_agorou,6,may,1945).
birthday(maria_agorou,5,may,1973).
birthday(marko_plakou,13,may,1949).

works(marko_plakou,intel,5000).
works(ian_fox,bbc,15200).
works(ann_fox,unem,0).
works(pat_fox,unem,0).
works(jim_fox,unem,0).
works(kostas_agorou,hospital,7000).
works(gianna_agorou,hospital,4000).

relation(ian_fox,ann_fox,[jim_fox,pat_fox]).
relation(kostas_agorou,gianna_agorou,[maria_agoru]).

exists(X):-person(X).

family(X,Y,[H|T]):-relation(X,Y,[H|T]).

dateofbirth(X,Y):-birthday(X,_,_,Y).
salary(X,S):-works(X,_,S).

working_parents(X,Y,S):-exists(X),dateofbirth(X,Y),salary(X,S),family(X,_,_).
working_parents(X,Y,S):-exists(X),dateofbirth(X,Y),salary(X,S),family(_,X,_).

