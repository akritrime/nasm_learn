
[ ! -d "./bin" ] && mkdir bin;
nasm -f elf64 hello.asm && ld hello.o -o bin/hello;./bin/hello;
rm hello.o -f;