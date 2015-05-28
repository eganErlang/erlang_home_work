-module(p14).

-export([duplicate/1]).

duplicate([])->[];

duplicate([H|T])->[H|[H|duplicate(T)]].


%%P14 (*) Написать дубликатор всех элементов входящего списка:  
%% c(p14). p14:duplicate([a,b,c,c,d]).
%% [a,a,b,b,c,c,c,c,d,d]
