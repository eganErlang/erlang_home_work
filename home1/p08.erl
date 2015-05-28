-module(p08).

-export([compress/1]).

compress(ACUM)->compress(ACUM,[]).

compress([], ACUM)->revers:reverse(ACUM);

compress([H,H|T], ACUM)->compress([H|T],ACUM);

compress([H|T], ACUM)-> compress(T,[H|ACUM]).


%%P08 (**) Удалить последовательно следующие дубликаты:  
%% c(p08). p08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
