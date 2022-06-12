CC = gcc -g
RM = rm -f
AR = ar rcs

SHARED_FLAGS = -shared -o
MULTI_FLAGS = -fPIC -c
O_FLAG = -o
C_FLAG = -c

PROGS = Code2 pole objetosc

Code2: Code2.o pole.a objetosc.so
	$(CC) $(O_FLAG) $@ $< pole.a ./objetosc.so

Code2.o: Code2.c
	$(CC) $(C_FLAG) $<

pole.o: pole.c
	$(CC) $(C_FLAG) $<

objetosc.o: objetosc.c
	$(CC) $(MULTI_FLAGS) $^

pole.a: pole.o
	$(AR) $@ $<

objetosc.so: objetosc.o
	$(CC) $(SHARED_FLAGS) $@ $<

clean:
	$(RM) $(PROGS) *.o *.a *.out *~ *.so *.gch
