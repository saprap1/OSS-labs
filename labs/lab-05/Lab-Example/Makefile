CC=gcc

all:
	LabExample

labExample: block.out myLib.a
	$(CC) -fPIC source/block.c	-o block.out

myLib:
		ar qc libblock.a block.out
		ar t libblock.a

libs: myLib.a

sharedLib.so:
		$(CC) -shared -o sharedLib.so

clean:
	rm -f myProgram *.out *.a