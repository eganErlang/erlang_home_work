-module(home5_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([
        {'_', [{"/api/cache_server", api_handler, []}]}
    ]),
    {ok, _} = cowboy:start_http(http, 100, [{port, 8090}],
        [{env, [{dispatch, Dispatch}]}]
    ),
	home5_sup:start_link().

stop(_State) ->
	ok.
