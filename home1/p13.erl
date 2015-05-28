-module(p13).
-export([decode/1]).

decode(L)->decode(L,[]).

decode([],Acc)->revers:reverse(flatt:flatten(Acc));

decode([H|T], Acc)->decode(T,[get_elment(H)|Acc]).

get_elment(X)->{Num,Ell}=X, times(Ell, Num).

times(Element,Times)->times(Element,Times,[]).

times(_Element,0, A)->A;

times(Element,Times,A)->times(Element, Times-1, [Element|A]).

%%P13 (**) Написать декодер для стандартного алгоритма RLE:  
%% c(p13). p13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
%% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]
