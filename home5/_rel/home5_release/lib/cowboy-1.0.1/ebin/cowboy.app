{application,cowboy,
             [{description,"Small, fast, modular HTTP server."},
              {vsn,"1.0.1"},
              {id, "1.0.1-dirty"},
              {modules, ['cowboy_req', 'cowboy_bstr', 'cowboy_handler', 'cowboy_websocket_handler', 'cowboy_clock', 'cowboy_protocol', 'cowboy_loop_handler', 'cowboy', 'cowboy_router', 'cowboy_app', 'cowboy_websocket', 'cowboy_spdy', 'cowboy_static', 'cowboy_http_handler', 'cowboy_http', 'cowboy_sup', 'cowboy_middleware', 'cowboy_sub_protocol', 'cowboy_rest']},
              {registered,[cowboy_clock,cowboy_sup]},
              {applications,[kernel,stdlib,ranch,cowlib,crypto]},
              {mod,{cowboy_app,[]}},
              {env,[]}]}.
