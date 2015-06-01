-module(bs02).
-compile([debug_info]).
-export([words/1]).

words(BinText1)->
	words(BinText1, <<>>, []).

words(<<" ", T/binary>>, Bcc, Acc)->words(T, <<>>, [Bcc|Acc]);

words(<<H, T/binary>>, Bcc, Acc)-> 
	L = <<Bcc/binary, H>>,
	words(T, L, Acc);

words(<<>>, Bcc, Acc)->reverse([Bcc|Acc]).

reverse(L)->reverse(L,[]).

reverse([H|T], A)->
	reverse(T, [H|A]);

reverse([], A) -> A.

%% BinText1 = <<"Text with four words">>.
%% c(bs02). bs02:words(BinText1).
%% [<<”Text”>>, <<”with”>>, <<”four”>>, <<”words”>>]
