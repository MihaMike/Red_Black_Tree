CC = g++ $(CFLAGS)
CFLAGS = -O0 -Wall

all: treeTst wrdFreq

treeTst: treeTst.o RBTree.o
  $(CC) -o treeTst treeTst.o RBTree.o

treeTst.o: treeTst.cpp RBTree.h
  $(CC) -c treeTst.cpp

RBTree.o: RBTree.cpp RBTree.h
  $(CC) -c RBTree.cpp

wrdFreq: wrdFreq.o TreeSet.o RBTree.o
  $(CC) -o wrdFreq wrdFreq.o TreeSet.o RBTree.o

wrdFreq.o: wrdFreq.cpp TreeSet.h RBTree.h
  $(CC) -c wrdFreq.cpp

TreeSet.o: TreeSet.cpp TreeSet.h RBTree.h
  $(CC) -c TreeSet.cpp

clean:
  rm -f *.o treeTst wrdFreq tmp*
