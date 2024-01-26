-module(subscriber).
-export([create/2, start/1]).


create(Ip, Port) ->

	application:start(chumak),

	{ok, SocketPid} = chumak:socket(sub),

	ok = chumak:subscribe(SocketPid, ""),

	case chumak:bind(SocketPid, tcp, Ip, Port) of
		{error, Reason} ->
                         io:format("Connection error:~s\n", [Reason]),
                         {error, Reason};
                 {ok, _} ->
                         io:format("Connection success\n"),
                         {ok, SocketPid}
         end.


listen(SocketConnectPid) ->
	{ok, Message} = chumak:recv(SocketConnectPid),
	io:format("Message: ~s\n", [binary_to_list(Message)]),
listen(SocketConnectPid).


start(SocketConnectPid) ->
	listen(SocketConnectPid).
