# test-akber-soft
Test for Akeber-Soft

# example:
 ## Publisher:
 `rebar3 shell` \
 `c("publisher"),` \
 `{ok, Socket} = publisher:create("localhost", 5555),` \
 `publisher:send(Socket, "Test").`

## Subsriber:
  `rebar3 shell` \
  `{ok, Socket} = subscriber:create("localhost", 5555),` \
  `subscriber:start(Socket).`

  
