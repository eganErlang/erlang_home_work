-module(p10).
-export([encode/1]).

 encode([H|T])->encode(T, H, [],1).

 encode([], _, Acc, _)->revers:reverse(Acc);

 encode([H], H, Acc, I)-> encode([], H, [{I+1,H}|Acc], 1);

 encode([H], A, Acc, I)-> 
	L=[{I,A}|Acc], 
	encode([], H, [{1,H}|L], 1);

 encode([H|T], H, Acc, I)-> encode(T, H, Acc, I+1); 

 encode([H|T], A, Acc, I)-> encode(T, H, [{I, A}|Acc], 1).

%% P10 (**) Закодировать список с использованием алгоритма RLE:  
%% c(p10). p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%% [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]
