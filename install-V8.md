# Install R package V8

You may meet errors like this when install V8
```
fatal error: v8stdint.h: no such file or directory

unable to load shared object V8.so
libv8.so: No such file or directory
```

Actually on Linux/MacOS platforms it is possible (and recommended) to automatically download a suitable static build of libv8 during package installation. You can enable it by setting an environment variable DOWNLOAD_STATIC_LIBV8 during installation, for example:

```
> Sys.setenv(DOWNLOAD_STATIC_LIBV8 = 1)
> install.packages("V8")
> library(V8)
Using V8 engine 9.6.180.12
> ct<-v8()
> ct$eval("1+2")
[1] "3"
```

refer
https://github.com/jeroen/V8/blob/master/README.md
