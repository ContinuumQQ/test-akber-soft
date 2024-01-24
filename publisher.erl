-module(publisher).
-export([send/3, create/2]).


create(Ip, Port) ->
	{ok, SocketPid} = chumak:socket(pub),
	
	case chumak:bind(SocketPid, tcp, Ip, Port) of 
		{error, Reason} -> 
			io:format("Connection error:~s\n", [Reason]),
			{error, Reason};
		{ok, _} ->
			io:format("Bind success\n"),
			{ok, SocketPid}
	end.

send(SocketBindPid, Topic, Message) ->
	ok = chumak:send(SocketBindPid, list_to_binary([Topic, Message])),
	io:format("Message Send to topic: ~p\n", [Topic]).