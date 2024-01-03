-module(lesson2_task9).
-export([pack/1, pack/2]).

pack(List) ->  pack(List, false).
pack(List, Debug) ->  pack(List, [], 1, Debug).

% Final transformation
pack([], Acc, _, _) ->  reverse(Acc);


pack([Head|Tail], [], Count, Debug) ->
    debug_print(Debug, Count, "Add item to the first group", Head),
    pack(Tail, [[Head]], Count + 1, Debug);

pack([Head|Tail], [[Head|Group]|Acc], Count, Debug) ->
    debug_print(Debug, Count, "Add item to existed group", Head),
    pack(Tail, [[Head,Head|Group]|Acc], Count + 1, Debug);

pack([Head|Tail], Acc, Count, Debug) ->
    debug_print(Debug, Count, "Start new group", Head),
    pack(Tail, [[Head]|Acc], Count + 1, Debug).

debug_print(true, Count, Message, Value) ->  io:format("[~p] ~s: ~p~n", [Count, Message, Value]);
debug_print(false, _Count, _Message, _Value) ->  ok.

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
