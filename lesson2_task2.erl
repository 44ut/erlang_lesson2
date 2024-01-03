-module(lesson2_task2).
-export([but_last/1]).

% Search for two last items in the list
but_last(List) ->
    but_last_helper(List, none, none).

but_last_helper([Head|Tail], _, Last) ->
    case Tail of
        [] ->
            {Last, Head};
        _ ->
            but_last_helper(Tail, Last, Head)
    end;

but_last_helper([], PreLast, _) ->
    {PreLast, none}.
