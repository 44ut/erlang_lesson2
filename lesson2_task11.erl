-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->  encode_modified_rle(pack(List)).

encode_modified_rle([]) ->  [];
encode_modified_rle([[Head|Tail]|Rest]) ->
    Length = len([Head|Tail]),
    if 
        Length > 1 -> 
            [{Length, Head}|encode_modified_rle(Rest)];
        true -> 
            [Head|encode_modified_rle(Rest)]
    end.

len(List) -> len(List, 0).
len([], Acc) ->   Acc;
len([_|Tail], Acc) ->  len(Tail, Acc + 1).

pack(List) ->  pack(List,[]).

pack([], Acc) ->   reverse(Acc);
pack([Head|Tail], []) ->   pack(Tail, [[Head]]);
pack([Head|Tail], [[Head|Group]|Acc]) ->  pack(Tail, [[Head,Head|Group]|Acc]);
pack([Head|Tail], Acc) -> pack(Tail, [[Head]|Acc]).

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
