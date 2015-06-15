{application,cowboy,
             [{description,"Small, fast, modular HTTP server."},
              {vsn,"1.0.1"},
              {id, "1.0.1-dirty"},
              {modules, ['cowboy_clock', 'cowboy_websocket', 'cowboy_websocket_handler', 'cowboy', 'cowboy_sub_protocol', 'cowboy_http_handler', 'cowboy_handler', 'cowboy_req', 'cowboy_http', 'cowboy_bstr', 'cowboy_protocol', 'cowboy_rest', 'cowboy_router', 'cowboy_sup', 'cowboy_loop_handler', 'cowboy_static', 'cowboy_spdy', 'cowboy_app', 'cowboy_middleware']},
              {registered,[cowboy_clock,cowboy_sup]},
              {applications,[kernel,stdlib,ranch,cowlib,crypto]},
              {mod,{cowboy_app,[]}},
              {env,[]}]}.
