-module(p11).
-export([encodemodified/1]).

 encodemodified([H|T])->encodemodified(T, H, [],1).

 encodemodified([], _, Acc, _)->revers:reverse(one(Acc));

 encodemodified([H], H, Acc, I)-> encodemodified([], H, [{I+1,H}|Acc], 1);

 encodemodified([H], A, Acc, I)-> L=[{I,A}|Acc], encodemodified([], H, [{1,H}|L], 1);

 encodemodified([H|T], H, Acc, I)-> encodemodified(T, H, Acc, I+1); 

 encodemodified([H|T], A, Acc, I)-> encodemodified(T, H, [{I, A}|Acc], 1).

one(L)->one(L,[]).
one([],Ac)->revers:reverse(Ac);
one([{1,X}|T], Ac)->one(T,[X|Ac]);
one([{N,X}|T], Ac)->one(T,[{N,X}|Ac]).

%% P11 (**) Закодировать список с использованием модифицированого алгоритма RLE:  
%% c(p11). p11:encodemodified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%% [{4,a},b,{2,c},{2,a},d,{4,e}]






