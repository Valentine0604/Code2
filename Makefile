CC = gcc -g
RM = rm -f
AR = ar rcs

SHARED_FLAGS = -shared -o
MULTI_FLAGS = -fPIC -c
O_FLAG = -o
C_FLAG = -c

.PHONY: clean
.SUFFIXES: .c .o .a .so	

PROGS = Code2 pole objetosc

all: $(PROGS)

Code2: Code2.o pole.a objetosc.so
	$(CC) $(O_FLAG) $@ $< pole.a ./objetosc.so

.c.o: 
	$(CC) $(C_FLAG) $<

pole.a: pole.o
	$(AR) $@ $<

objetosc.so: objetosc.o
	$(CC) $(SHARED_FLAGS) $@ $<

clean:
	$(RM) $(PROGS) *.o *.a *.out *~ *.so *.gch
