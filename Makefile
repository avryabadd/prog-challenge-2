CC = gcc
CFLAGS = -Wall -pthread

all: server client

server: HTTP_Server.c
	$(CC) $(CFLAGS) -o server HTTP_Server.c

client: HTTP_Client.c
	$(CC) $(CFLAGS) -o client HTTP_Client.c

clean:
	rm -f server client

run-server:
	./server

run-client:
	./client