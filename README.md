gcpreload
=========

Automatic GC for leaking applications.
Requires libgc (boehm gc) built with --enable-redirect-malloc.
To be used like this:

~~~
LD_PRELOAD="./gcpreload.so" <your-buggy application>
~~~
