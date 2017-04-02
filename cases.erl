-module(cases).
-export([insert/2, beach/1]).

insert(X,[]) ->
	[X];
insert(X,Set) ->
	case lists:member(X,Set) of
		true -> Set;
		false -> [X|Set]
	end.

beach(Temp) ->
	case Temp of
		{celsius, N} when N >= 20, N =< 45 ->
			'favorable';
		{kelvin, N} when N >= 293, N =< 318 ->
			'scientifically favorable';
		_ ->
			'avoid beach'
	end.