-module(useless).
-export([hello/0, add/2, greet_and_add_two/1]).

%% Shows greetings
hello() ->
	io:format("Hello, World!~n").

add(A,B) ->
	A + B.

greet_and_add_two(X) ->
	hello(),
	add(X,2).