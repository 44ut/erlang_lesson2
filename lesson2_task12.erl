-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(List) -> decode_modified(List, []).

decode_modified([], Acc) -> reverse(Acc);
decode_modified([{N, Elem}|Tail], Acc) -> decode_modified(Tail, replicate(Elem, N, Acc));
decode_modified([Elem|Tail], Acc) -> decode_modified(Tail, [Elem|Acc]).

replicate(Elem, N, Acc) when N > 0 -> replicate(Elem, N - 1, [Elem|Acc]);
replicate(_, _, Acc) -> Acc.

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
