-module(snmp_rabbit).
-behaviour(application).
-export([start/2, stop/1]).

start(normal, []) -> 
    application:stop(mnesia),
    application:stop(otp_mibs),
    application:stop(snmp),
    application:start(folsom),
    mnesia:start(),
    application:start(snmp),
    application:start(otp_mibs),
    otp_mib:load(snmp_master_agent),
    os_mon_mib:load(snmp_master_agent),
    snmp_rabbit_sup:start_link().
stop(_State) -> ok.
