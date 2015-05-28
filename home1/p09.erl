-module(p09).

-export([pack/1]).

pack([])->[];

pack([H])->[H];

pack([[H|T0]|[H|T1]])->pack([[H|[H|T0]]|T1]);

pack([[H0|T0]|[H1|[]]])->[[H0|T0],[H1]];

pack([[H0|T0]|[H1|T1]])->[[H0|T0]|pack([H1|T1])];

pack([H|[H|T]])->pack([[H,H]|T]);

pack([H0|[H1|T]])->[[H0]|pack([H1|T])].


%%P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки: 
%% c(p09). p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%% [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

