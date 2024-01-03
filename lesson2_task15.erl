-module(lesson2_task15).
-export([replicate/2]).

% Replicate all
replicate(List, N) -> replicate_list(List, N, []).

% Replicate list
replicate_list([], _, Acc) -> reverse(Acc);
replicate_list([Head|Tail], N, Acc) -> replicate_list(Tail, N, replicate_element(Head, N, Acc)).

% Replicate item
replicate_element(Elem, N, Acc) when N > 0 -> replicate_element(Elem, N - 1, [Elem|Acc]);
replicate_element(_, _, Acc) -> Acc.

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
