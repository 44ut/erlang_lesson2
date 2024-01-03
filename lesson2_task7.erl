-module(lesson2_task7).
-export([flatten/1]).

flatten(List) ->  reverse(flatten(List, [])).

flatten([], Acc) ->   Acc;
flatten([[]|Tail], Acc) ->  flatten(Tail, Acc);
flatten([Head|Tail], Acc) ->
    case try_match_list(Head) of
        true -> 
            NewAcc = flatten(Head, Acc),
            flatten(Tail, NewAcc);
        false -> 
            flatten(Tail, [Head|Acc])
    end.

try_match_list([]) -> false;
try_match_list(Head) ->
    try
        [_|_] = Head,
        true
    catch
        _:_ ->
            false
    end.

reverse(List) ->  reverse(List, []).
reverse([], Acc) ->  Acc;
reverse([Head|Tail], Acc) ->  reverse(Tail, [Head|Acc]).
