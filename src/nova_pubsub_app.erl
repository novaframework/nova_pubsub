%%%-------------------------------------------------------------------
%% @doc nova_pubsub public API
%% @end
%%%-------------------------------------------------------------------

-module(nova_pubsub_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    nova_pubsub_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
