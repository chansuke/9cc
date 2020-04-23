CFLAGS=-std=c11 -g -static

minicc: main.o
	$(CC) -o $@ $? $(LDFLAGS)

test: minicc
	./test.sh

clean:
	rm -f minicc *.o *~ tmp*

.PHONY: test clean
