ASSEMBLER = nasm -felf64 -gdwarf
LINKER    = gcc -no-pie
CC        = gcc -Wall -ggdb

all: exp neo-hello tester

exp: exp.o
	$(LINKER) -o exp exp.o

tester: string-length.o
	$(CC) -o tester tester.c string-length.o

exp.o: exp.asm
	$(ASSEMBLER) exp.asm

neo-hello: neo-hello.o string-length.o
	$(LINKER) -o neo-hello neo-hello.o string-length.o

neo-hello.o:
	$(ASSEMBLER) neo-hello.asm

string-length.o:
	$(ASSEMBLER) string-length.asm

clean:
	rm -rf *.o exp neo-hello
