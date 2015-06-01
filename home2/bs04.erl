-module(bs04).
-export([decode_xm/1]).


decode_xm(XML)->decode_xm(XML, Par, {}).


decode_xm(<<H, T/binary>>, Acc)->
	Tg = <<is_xml_tag(<<"<",_, ">">>=H)>>,
	decode_xm(T,<<Acc/binary, H>>);


decode_xm(<<>>,Acc)->Acc.


is_xml_tag(<<"<",_, ">">>=Tag)->Tag;

is_xml_tag(<<_,_,_>>=Tag)->false.








%% BinXML = <<"<start><item>Text1</item><item>Text2</item></start>">>.
%% c(bs04). bs04:decode_xml(BinXML).
%% {<<”start”>>, [], [ 
%%    {<<”item”>>, [], [<<”Text1”>>]}, 
%%    {<<”item”>>, [], [<<”Text2”>>]} 
%% ]}

