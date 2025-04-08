CC=gcc
CFLAGS=-Wall -g
OBJS=shell.o

shell: $(OBJS)
	$(CC) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) shell

.PHONY: clean
