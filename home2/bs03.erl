-module(bs03).
-export([split/2]).

split(Bin, Sep)->	 
	split(Bin, Sep, <<>>, []).

split(Bin, Sep, Bcc, Acc)  ->
	S = list_to_binary(Sep),
	Len = byte_size(S),
	case Bin of
		<<S:Len/binary, T/binary>> ->split(T, Sep, <<>>, [Bcc|Acc]);
		<<H, T/binary>> -> split(T, Sep, <<Bcc/binary, H>>, Acc);
		<<>>->lists:reverse([Bcc|Acc]) 
	end.

%% BinText3 = <<"Col1­-:-­­Col2-:-­Col3­-:-­Col4-:-­Col5">>.

%% c(bs03). bs03:split(BinText3, "-:-").

%% [<<”Col1”>>, <<”Col2”>>, <<”Col3”>>, <<”Col4”>>]
