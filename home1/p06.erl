-module(p06).

-export([is_palindrome/1]).

is_palindrome([])->true;

is_palindrome(List) ->
	List =:= reverse(List). 

reverse(L)->reverse(L,[]).

reverse([H|T], A)->
	reverse(T, [H|A]);

reverse([], A) -> A.


%%P06 (*) Определить, является ли список палиндромом:  
%% c(p06). p06:is_palindrome([1,2,3,2,1]).
