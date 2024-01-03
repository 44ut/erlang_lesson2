-module(lesson2_task1).
-export([last/1]).

last([]) ->   []; 

last([Head|Tail]) ->
    case Tail of
        [] ->
            Head;
        _ ->
            last(Tail)
    end.
