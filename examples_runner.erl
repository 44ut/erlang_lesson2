-module(examples_runner).
-export([run_examples/0]).

% Runner of all 15 lesson2 home work tasks
% ------------------------------------------
% c(examples_runner), examples_runner:run_examples().

run_examples() ->
    compile_modules(),
    % Task 01
    io:format("01.   last element in list: [a, b, c, d, e, f]           | result: ~p~n", [lesson2_task1:last([a, b, c, d, e, f])]),

    % Task 02
    io:format("02.   last 2 elements in list: [a, b, c, d, e, f]        | result: ~p~n", [lesson2_task2:but_last([a, b, c, d, e, f])]),

    % Task 03
    io:format("03-1. N-th Element ([a, b, c, d, e, f], 4)]              | result 1: ~p~n", [lesson2_task3:element_at([a, b, c, d, e, f], 4)]),
    io:format("03-2. N-th Element ([a, b, c, d, e, f], 10)              | result 2: ~p~n", [lesson2_task3:element_at([a, b, c, d, e, f], 10)]),

    % Task 04
    io:format("04-1. List Length len([])                                | result 1: ~p~n", [lesson2_task4:len([])]),
    io:format("04-2. List Length len([a, b, c, d])                      | result 2: ~p~n", [lesson2_task4:len([a, b, c, d])]),

    % Task 05
    io:format("05.   Reverse List  ([1, 2, 3])                          | result: ~p~n", [lesson2_task5:reverse([1, 2, 3])]),

    % Task 06
    io:format("06.   Is Palindrome is_palindrome([1, 2, 3, 2, 1])       | result: ~p~n", [lesson2_task6:is_palindrome([1, 2, 3, 2, 1])]),

    % Task 07
    io:format("07.   Flatten flatten([a,[],[b,[c,d],e]])                | result: ~p~n", [lesson2_task7:flatten([a,[],[b,[c,d],e]])]),

    % Task 08
    io:format("08.   Compress [a,a,a,a,b,c,c,a,d,e,e,e,e]               | result: ~p~n", [lesson2_task8:compress([a,a,a,a,b,c,c,a,d,e,e,e,e])]),

    % Task 09
    io:format("09.   Pack [a,a,a,a,b,c,c,a,a,d,e,e,e,e]                 | result: ~p~n", [lesson2_task9:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e])]),

    % Task 10
    io:format("10.   Encode RLE [a,a,a,a,b,c,c,a,a,d,e,e,e,e]           | result: ~p~n", [lesson2_task10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e])]),

    % Task 11
    io:format("11.   Encode Modified RLE [a,a,a,a,b,c,c,a,a,d,e,e,e,e]  | result: ~p~n", [lesson2_task11:encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e])]),

    % Task 12
    io:format("12.   Decode Modified RLE [{4,a},b,{2,c},{2,a},d,{4,e}]  | result: ~p~n", [lesson2_task12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}])]),

    % Task 13
    io:format("13.   Decode RLE | [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}] | result: ~p~n", [lesson2_task13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}])]),

    % Task 14
    io:format("14.   Duplicate [a,b,c,c,d]                              | result: ~p~n", [lesson2_task14:duplicate([a,b,c,c,d])]),

    % Task 15
    io:format("15.   Replicate ([a,b,c], 3)                             | result: ~p~n", [lesson2_task15:replicate([a,b,c], 3)]).

compile_modules() ->
    compile:file("lesson2_task1.erl"),
    compile:file("lesson2_task2.erl"),
    compile:file("lesson2_task3.erl"),
    compile:file("lesson2_task4.erl"),
    compile:file("lesson2_task5.erl"),
    compile:file("lesson2_task6.erl"),
    compile:file("lesson2_task7.erl"),
    compile:file("lesson2_task8.erl"),
    compile:file("lesson2_task9.erl"),
    compile:file("lesson2_task10.erl"),
    compile:file("lesson2_task11.erl"),
    compile:file("lesson2_task12.erl"),
    compile:file("lesson2_task13.erl"),
    compile:file("lesson2_task14.erl"),
    compile:file("lesson2_task15.erl"),

    ok.
