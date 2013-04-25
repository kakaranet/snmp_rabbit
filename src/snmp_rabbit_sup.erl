-module(snmp_rabbit_sup).
-behaviour(supervisor).
-export([start_link/0, init/1]).

-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 10000, Type, [I]}).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, _Arg = []).

init([]) ->
    {ok, {{one_for_one, 3, 10}, [?CHILD(snmp_rabbit_agent, worker)]}}.
