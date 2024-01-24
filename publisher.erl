-module(publisher).
-export([send/2, create/2]).


create(Ip, Port) ->

	application:start(chumak),

	{ok, SocketPid} = chumak:socket(pub),
	
	case chumak:bind(SocketPid, tcp, Ip, Port) of 
		{error, Reason} -> 
			io:format("Connection error:~s\n", [Reason]),
			{error, Reason};
		{ok, _} ->
			io:format("Bind success\n"),
			{ok, SocketPid}
	end.

send(SocketBindPid, Message) ->
	ok = chumak:send(SocketBindPid, list_to_binary([Message])).