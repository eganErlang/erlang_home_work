{application, home5, [
	{description, ""},
	{vsn, "0.1.0"},
	{id, "bf71477-dirty"},
	{modules, ['api_handler', 'home5_app', 'storage', 'home5_sup']},
	{registered, [home5_sup]},
	{applications, [
		kernel,
		stdlib,
		cowboy,
		jsx
	]},
	{mod, {home5_app, []}},
	{env, []}
]}.
