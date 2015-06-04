-module(bs04).
-export([decode_xml/1]).

decode_xml(BinXML) when is_binary(BinXML) ->
	{Tag, Rest} = tag(BinXML),
	<<>> = Rest,
	Tag.


tag(<<"<", Bin/binary>>)->
	[Tag1,Rest1] = binary:split(Bin, <<">">>),	
	Len = size(Tag1)-1,

	case Tag1 of
		<<TagHeader:Len/binary, "/">> ->
			{Tag, []} = tag_header(TagHeader),
			{{Tag,[],[]}, Rest1};
		TagHeader ->
			{Tag, []} = tag_header(TagHeader),
			{Content, Rest2} = tag_content(Rest1, Tag),			
			{{Tag,[],Content}, Rest2}
	end.	

tag_header(TagHeader) ->
	case binary:split(TagHeader, [<<" ">>, <<"\n">>, <<"\t">>, <<"\r">>]) of
		[Tag] -> {Tag, []}			
	end.

tag_content(<<Blank,Bin/binary>>, Parent) when Blank == $ orelse Blank == $\n orelse Blank == $\r orelse Blank == $\t ->
	tag_content(Bin, Parent);

tag_content(<<"</", Bin1/binary>>, Parent) ->
	Len = size(Parent),
	<<Parent:Len/binary, Bin2/binary>> = Bin1,
	<<">", Bin/binary>> = Bin2,
	{[], Bin};

tag_content(<<"<",_/binary>> = Bin, Parent) ->
	{Tag, Rest1} = tag(Bin),
	{Content, Rest2} = tag_content(Rest1, Parent),
	{[Tag|Content], Rest2};

tag_content(Bin, Parent) ->
	[Text, Rest] = binary:split(Bin, <<"</",Parent/binary,">">>),
	{[Text],Rest}.
	
%% BinXML = <<"<start><item>Text1</item><item>Text2</item></start>">>.
%% c(bs04). bs04:decode_xml(BinXML).
%% {<<”start”>>, [], [ 
%%    {<<”item”>>, [], [<<”Text1”>>]}, 
%%    {<<”item”>>, [], [<<”Text2”>>]} 
%% ]}

