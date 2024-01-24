# test-akber-soft
Test for Akeber-Soft

# build: 
make Compile

# run:
cd ./BUILD \
chmod +x run.sh \
./run.sh

# example:
 ## Publisher:
`{ok, Socket} = publisher:create("localhost", 5555),` \
`publisher:send(Socket, "Topic" ,"Hello, Server").`

## Subsriber:
  `{ok, Socket} = subscriber("localhost", 5555, "Topic"),` \
  `subscriber:listen(Socket).`

  
