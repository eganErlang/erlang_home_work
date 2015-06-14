-module(api_handler).

-export([init/3]).
-export([content_types_provided/2]).
-export([handle_to_json/2]).


init(_Transport, _Req, _Opts) ->
    {upgrade, protocol, cowboy_http_rest}.
    
content_types_provided(Req, State) ->
	{[
		{<<"application/json">>, handle_to_json}
	], Req, State}.	

handle_to_json(Req, State) ->
	Body = <<"{\"rest\": \"Hello World!\"}">>,
	{Body, Req, State}.