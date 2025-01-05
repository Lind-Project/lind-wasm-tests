make clean
make AR="llvm-ar" ARFLAGS="crs" RANLIB="echo" CFLAGS="--debug" V=1 > check.log #will fail

cp python-native/Parser/pgen Parser/pgen && chmod +x Parser/pgen

make AR="llvm-ar" ARFLAGS="crs" RANLIB="echo" CFLAGS="--debug" V=1 >> check.log

