-module(flatt).
-export([flatten/1]).

flatten([[H|T]|L])-> flatten([H,T|L]);

flatten([[]|T]) -> flatten(T);

flatten([E|T]) -> [E|flatten(T)];

flatten([]) -> [].




%% c(flatt). flatt:flatten([a,[b,[c,d],e]]).
%% P07 (**) Выровнять структуру с вложеными списками:  
