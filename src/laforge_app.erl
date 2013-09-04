-module(laforge_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    lager:start(),
    lager:debug("Starting LaForge.", []),
    mnesia:create_schema([node()]),
    laforge_sup:start_link().

stop(_State) ->
    lager:debug("Stopping LaForge.", []),
    ok.
