Code2: Code2.o pole.a objetosc.so
	gcc -o Code2 Code2.o pole.a ./objetosc.so

Code2.o: Code2.c
	gcc -c Code2.c

pole.o: pole.c
	gcc -c pole.c

objetosc.o: objetosc.c
	gcc -fPIC -c objetosc.c

pole.a: pole.o
	ar rcs pole.a pole.o

objetosc.so: objetosc.o
	gcc -shared -o objetosc.so objetosc.o

clean:
	rm Code2  *.o *.a *.so
