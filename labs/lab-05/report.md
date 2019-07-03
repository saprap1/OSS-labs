# Lab 5

I was out sick for the week when this lab took place. I have lots of questions about it, but I will come into office hours to ask them adter the break, even if the lab has already been graded.  

## Cmake Tutorial
- Here are the results from running the Tutorial executable  
Steps 1 and 2:  
![](steps-1-2.PNG)  
Step 5:
![](step-5.PNG)  

- Had some trouble setting up install and running tests. Can't find install directory and tests to be run can't be found even though a testing directory was made.   


## Makefile for LabExample
- Here is the code for my Makefile (makefile gave an error, I suspect it's something to do with my $PATH but I haven't been able to figure it out)  
```
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
```

- [Here](./Lab-Example/CMakeLists.txt) is the link to my CMakeLists.txt  
