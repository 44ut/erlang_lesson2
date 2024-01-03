-module(lesson2_task3).
-export([element_at/2]).

element_at([Head|_], 1) ->   Head;

element_at([_|Tail], N) when N > 1 ->  element_at(Tail, N - 1);

element_at(_, _) ->
    % if index beyond range or index wrong
    undefined.
