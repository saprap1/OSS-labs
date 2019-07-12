CC=gcc
all: LabExample LabExampleShared

LabExample: myLib.a program.out
	$(CC) program.out myLib.a -o LabExample

program.out: program.c
	$(CC) -c program.c -o program.out

block.out: source/block.c 
	$(CC) -fPIC -c source/block.c -o block.out

myLib.a: block.out
		ar qc myLib.a block.out

sharedLib.so: block.out
		$(CC) block.out -shared -o sharedLib.so

LabExampleShared: sharedLib.so program.out
	$(CC) program.out sharedLib.so -o LabExampleShared -Wl,-rpath='$$ORIGIN'


clean:
	rm -f myProgram *.out *.a 