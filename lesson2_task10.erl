-module(lesson2_task10).
-export([encode/1]).

encode(List) -> encode_rle(pack(List)).

encode_rle([]) -> [];
encode_rle([[Head|Tail]|Rest]) -> [{len([Head|Tail]), Head}|encode_rle(Rest)].

len(List) -> len(List, 0).
len([], Acc) ->   Acc;
len([_|Tail], Acc) ->  len(Tail, Acc + 1).

pack(List) ->  pack(List,[]).
pack([], Acc) ->  reverse(Acc);
pack([Head|Tail], []) -> pack(Tail, [[Head]]);
pack([Head|Tail], [[Head|Group]|Acc]) ->   pack(Tail, [[Head,Head|Group]|Acc]);
pack([Head|Tail], Acc) ->  pack(Tail, [[Head]|Acc]).

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
