-module(oc_reporter_stdout).

-export([init/1,
         report/2]).

-include_lib("stdlib/include/qlc.hrl").

init(_) ->
    ok.

report(Tid, _) ->
    qlc:e(qlc:q([io:format("~p~n", [Span]) || Span <- ets:table(Tid)])).
