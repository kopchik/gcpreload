gcpreload.so: gcpreload.c
	$(CC) -shared -fPIC ./gcpreload.c -o gcpreload.so  -lgc

clean:
	rm -f *.so *.o

test:
	
	
	
	
	
	
	
	
	
	
	
	
	
