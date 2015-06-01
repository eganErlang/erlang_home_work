-module(bs01).
-export([first_word/1]).

first_word(W)->
	first_word(W, <<>>).

first_word(<<" ", _Rest/binary>>, Acc)->Acc;

first_word(<<H, Rest/binary>>, Acc)->
	first_word(Rest, <<Acc/binary, H>>);

first_word(<<>>, Acc)->Acc.

%% c(bs01). bs01:first_word(BinText). BinText = <<"Some text">>.
%% <<"Some">> 

