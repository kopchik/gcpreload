all: gcpreload.so test

gcpreload.so: gcpreload.c
	$(CC) -DREDIRECT_MALLOC -shared -fPIC ./gcpreload.c -o gcpreload.so  -lgc

.PHONY: clean test
clean:
	rm -f *.so *.o test

test: test.c
	${CC} test.c -o test
	ulimit -v 20000; ./test 2>/dev/null || exit 0 && (echo "test expected to fail"; exit 1)
	ulimit -v 20000; LD_PRELOAD="./gcpreload.so" ./test
	
	
	
	
	
	
	
	
	
	
	
