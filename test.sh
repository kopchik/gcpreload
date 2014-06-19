gcc -shared -fPIC ./gcpreload.c -o gcpreload.so -L. -lgc
gcc ./test.c -o test
LD_LIBRARY_PATH='.' LD_PRELOAD="./gcpreload.so" ./test
