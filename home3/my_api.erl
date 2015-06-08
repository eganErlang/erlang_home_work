-module(my_api).

-export([def_user/0, insert_record/1, create_table/1, delete_record/2, select_record/3]).

-include_lib("stdlib/include/ms_transform.hrl").

-record(users,{login, email, dt}).

insert_record(TableName)->
Data = [#users{login="egan", email="egan@ukr.net", dt={2015, 06, 01}},
	#users{login="egan1", email="egan1@ukr.net", dt={2015, 06, 01}},
	#users{login="egan2", email="egan2@ukr.net", dt={2015, 07, 01}},
	#users{login="egan3", email="egan3@ukr.net", dt={2015, 08, 01}},
	#users{login="egan4", email="egan4@ukr.net", dt={2015, 09, 01}}

],
	case ets:info(TableName) of
		undefined -> {error, "Table does not exist."};
		_else -> 
			ets:insert(TableName, Data), 
		    	{ok, "Data saved OK."}	
end.			

delete_record(TableName, Key)->
	case ets:delete(TableName, Key) of
	true -> {ok, "Record deleted OK."};
	_else -> {error,"Something went wrong"}
end.


select_record(TableName, DtStart, DtEnd)-> 
	ets:select(TableName, ets:fun2ms(fun(N=#users{dt=C})
		       when C >= DtStart orelse C =< DtEnd->
		                N
		   end)).


create_table(TableName)->
	Pid = ets:new(TableName, [public, named_table, {keypos, #users.login}]),
	{ok, Pid}.

def_user() ->
 #users{}.
