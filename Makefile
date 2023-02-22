CC=gcc

all:
	$(CC) -o client client.c
	$(CC) -o server server.c
clean:
	rm -f client server
