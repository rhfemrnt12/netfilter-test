LDLIBS=-lnetfilter_queue

all: netfilter-test

netfilter-test: main.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -o $@

main.o: nfqnl_test.c libnet-headers.h
	g++ -c -o main.o nfqnl_test.c -lnetfilter_queue
clean:
	rm -f netfilter-test *.o
