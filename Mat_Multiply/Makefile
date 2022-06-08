SYSROOT=/home/arun/Desktop/build

execute:
	gcc -L${SYSROOT}/usr/lib64 -I${SYSROOT}/include -Wl,-rpath=${SYSROOT}/lib64 -Wl,--dynamic-linker=${SYSROOT}/lib64/ld-2.18.90.so -o matMultiply matMultiply.c
