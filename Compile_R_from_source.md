# Compile R from source code

Run as root to install 
```
yum install readline-devel
yum install libtiff-devel
```

Run as regular user
```
wget https://cran.r-project.org/src/base/R-4/R-4.2.3.tar.gz

tar -xzf R-4.2.3.tar.gz

./configure --prefix=/usr/local/R/R-4.2.3 \
--enable-memory-profiling \
--enable-R-shlib \
--with-blas \
--with-lapack \
--with-pcre1 \
--with-libtiff \
--with-ICU \
--disable-R-profiling \
--disable-nls

make
```

Run as root to install 
```
make install

```

https://cran.r-project.org/doc/manuals/r-release/R-admin.html
