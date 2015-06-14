{application,ranch,
             [{description,"Socket acceptor pool for TCP protocols."},
              {vsn,"1.1.0"},
              {id, "1.1.0-dirty"},
              {modules, ['ranch', 'ranch_acceptor', 'ranch_transport', 'ranch_sup', 'ranch_app', 'ranch_protocol', 'ranch_tcp', 'ranch_ssl', 'ranch_listener_sup', 'ranch_server', 'ranch_conns_sup', 'ranch_acceptors_sup']},
              {registered,[ranch_sup,ranch_server]},
              {applications,[kernel,stdlib]},
              {mod,{ranch_app,[]}},
              {env,[]}]}.
