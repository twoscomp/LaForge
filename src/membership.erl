-module(membership).

-behavior(gen_server).

-export().

-include("membership.hrl").

-record(state, {}).

start_link() ->

%% ===================================================================
%% gen_server callbacks
%% ===================================================================

init(Opts) -> 
    lager:debug("Creating membership tables.", []),
    mnesia:create(groups, [{disc_copies, [node()]},
			   {attributes, record_info(fields, group)}]),
    mnesia:create(bands, [{disc_copies, [node()]},
			  {attributes, record_info(fields, bands)}]),
    mnesia:create(users, [{disc_copies, [node()]},
			  {attributes, record_info(fields, users)}]),
    {ok, #state{}}.

%% ===================================================================
%% API
%% ===================================================================

create_group()

create_band()

create_user()

group_add_band()

user_add_band()
	
