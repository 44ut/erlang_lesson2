-module(lesson2_task13).
-export([decode/1]).

decode(List) -> decode(List, []).

decode([], Acc) -> reverse(Acc);
decode([{N, Elem}|Tail], Acc) -> decode(Tail, replicate(Elem, N, Acc)).

replicate(Elem, N, Acc) when N > 0 -> replicate(Elem, N - 1, [Elem|Acc]);
replicate(_, _, Acc) -> Acc.

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
