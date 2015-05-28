-module(p12).

-export([decodemodified/1]).

decodemodified(L)->decodemodified(L,[]).

decodemodified([],Acc)->revers:reverse(flatt:flatten(Acc));

decodemodified([H|T], Acc) -> decodemodified(T, [ell(H)|Acc]).

ell({N,M})->times(M,N);

ell(M)->M.

times(Element,Times)->times(Element,Times,[]).

times(_Element,0, A)->A;

times(Element,Times,A)->times(Element, Times-1, [Element|A]).

%% P12 (**) Написать декодер для модифицированого алгоритма RLE:  
%% c(p12). p12:decodemodified([{4,a},b,{2,c},{2,a},d,{4,e}]).
%% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

