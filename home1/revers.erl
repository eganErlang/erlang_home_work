-module(revers).
-export([reverse/1]).

reverse(L)->reverse(L,[]).

reverse([H|T], A)->
	reverse(T, [H|A]);

reverse([], A) -> A.


%% c(revers). revers:reverse([1,2,3]).
%% P05 (*) Перевернуть список:  
