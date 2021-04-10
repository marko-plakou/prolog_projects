common_list([H1|T1],[H2|T2]):-
    member(K,[H1|T1]),
    member(K,[H2|T2]).
