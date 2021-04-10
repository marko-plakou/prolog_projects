:-use_module(library(clpfd)).
check([]).
check([H1|T1]):-H1=<9,check(T1).
line([H|T],N):-check([H|T]),all_different([H|T]),sum_list([H|T],Y),Y=N.
solve([H1,H2,H3,H4,H5,H6,H7,H8|Tail]):- L2 = [A,B,C,E,F,G,J,K,L,N,O,P],
    L2 ins 1..9,
    A #= H1-B-C,
    B #= H6-F-J-N,
    C #= H7-G-K-O,
    E #= H2-F-G,
    E #= H5-A,
    J #= H3-K-L,
    N #= H4-O-P,
    L #= H8-P,
       labeling([],L2),line([A,B,C],H1),line([E,F,G],H2),line([J,K,L],H3),line([N,O,P],H4),line([A,E],H5),line([B,F,J,N],H6),line([C,G,K,O],H7),line([L,P],H8),write(L2).
solve:-write('FIRSTLY INPUT  THE LINES VALUES AND THEN THE COLUMNS VALUES WITH THE FORMAT OF A PROLOG LIST'),read(L),solve(L).
