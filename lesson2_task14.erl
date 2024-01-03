-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) -> duplicate(List, []).

duplicate([], Acc) -> reverse(Acc);
duplicate([Head|Tail], Acc) -> duplicate(Tail, [Head, Head|Acc]).

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
