-module(p15).

-export([replicate/2, times/2]).

replicate(L, N)->replicate(L, N, []).

replicate([], _, Acc)->revers:reverse(flatt:flatten(Acc));

replicate([H|T], N, Acc)-> replicate(T, N, [times(H,N)|Acc]).

times(Element,Times)->times(Element,Times,[]).

times(_Element,0, A)->A;

times(Element,Times,A)->times(Element, Times-1, [Element|A]).


%%P15 (**) Написать функцию­репликатор всех элементов входящего списка:    
%% c(p15). p15:replicate([a,b,c], 3).
%% [a,a,a,b,b,b,c,c,c]
