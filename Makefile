ERLANGC = erlc
OPTIONS = -o BUILD

compile:subscriber publisher
	echo "Chumak build Project"

subscriber:subscriber.erl
	$(ERLANGC) $(OPTIONS) subscriber.erl

publisher:publisher.erl
	$(ERLANGC) $(OPTIONS) publisher.erl