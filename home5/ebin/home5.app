{application, home5, [
	{description, ""},
	{vsn, "0.1.0"},
	{id, "3ce5471"},
	{modules, ['home5_sup', 'api_handler', 'home5_app']},
	{registered, [home5_sup]},
	{applications, [
		kernel,
		stdlib,
		cowboy
	]},
	{mod, {home5_app, []}},
	{env, []}
]}.
