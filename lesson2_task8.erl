-module(lesson2_task8).
-export([compress/1]).

compress(List) -> compress(List, undefined, []).

compress([], _, Acc) -> reverse(Acc);
compress([Head|Tail], Prev, Acc) when Head == Prev -> compress(Tail, Head, Acc);
compress([Head|Tail], _, Acc) -> compress(Tail, Head, [Head|Acc]).

reverse(List) -> reverse(List, []).
reverse([], Acc) -> Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
