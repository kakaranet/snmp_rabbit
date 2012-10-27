-module(snmp_rabbit).
-behaviour(application).
-export([start/2, stop/1]).

start(normal, []) -> 
    application:stop(mnesia),
    application:stop(otp_mibs),
    application:stop(snmp),
    mnesia:start(),
    application:start(snmp),
    application:start(otp_mibs),
    otp_mib:load(snmp_master_agent),
    os_mon_mib:load(snmp_master_agent),
    rabbit_snmp_sup:start_link().
stop(_State) -> ok.
