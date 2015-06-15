{application,ranch,
             [{description,"Socket acceptor pool for TCP protocols."},
              {vsn,"1.1.0"},
              {id, "1.1.0-dirty"},
              {modules, ['ranch_tcp', 'ranch_server', 'ranch_acceptors_sup', 'ranch_listener_sup', 'ranch_acceptor', 'ranch', 'ranch_transport', 'ranch_app', 'ranch_ssl', 'ranch_protocol', 'ranch_sup', 'ranch_conns_sup']},
              {registered,[ranch_sup,ranch_server]},
              {applications,[kernel,stdlib]},
              {mod,{ranch_app,[]}},
              {env,[]}]}.
