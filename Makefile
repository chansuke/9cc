CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

minicc: $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): mini.h

test: minicc
	./test.sh

clean:
	rm -f minicc *.o *~ tmp*

.PHONY: test clean
