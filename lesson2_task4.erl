-module(lesson2_task4).
-export([len/1]).

len(List) -> len(List, 0).

len([], Acc) ->    Acc;
len([_|Tail], Acc) -> len(Tail, Acc + 1).
