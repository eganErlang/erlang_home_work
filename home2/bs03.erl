-module(bs03).
-export([split/1]).

split(Bin,Sep)->split(Bin, Sep <<>>, []).

split(<<Sep, T/binary>>, Bcc, Acc)->split(T, <<>>, [Bcc|Acc]);

split(<<H, T/binary>>, Bcc, Acc)-> 
	L = <<Bcc/binary, H>>,
	split(T, L, Acc);

split(<<>>, Bcc, Acc)->reverse([Bcc|Acc]).

reverse(L)->reverse(L,[]).

reverse([H|T], A)->
	reverse(T, [H|A]);

reverse([], A) -> A.

%% BinText3 = <<"Col1­-:-­­Col2-:-­Col3­-:-­Col4-:-­Col5">>.

%% c(bs03). bs03:split(BinText3).

%% [<<”Col1”>>, <<”Col2”>>, <<”Col3”>>, <<”Col4”>>]
