# Program Code2

Autor: Ewelina Sałata

Licencja: GPL 3.0

-------------------------------------------------------------------------------------

Funkcjonalności programu Code 2:
 - możliwość policzenia pola kwadratu (przy wykorzystaniu biblioteki statycznej)
 - mozliwość policzenia objętości sześcianu (przy użyciu biblioteki dynamicznej)

-------------------------------------------------------------------------------------

Wymagane pliki:
Makefile 
Code2.c
pole.c, pole.h
objetosc.c, objetosc.h

-------------------------------------------------------------------------------------

Aby skompilować i zainstalować program, należy użyć polecenia:

		make Code2

To polecenie spowoduje powstanie dodatkowych plików:

	Code2       # Plik wykonywalny z działającym programem
	pole.a      # Biblioteka statyczna z funkcją do liczenia pola kwadratu
	objetosc.so # Biblioteka współdzielona z funkcją do liczenia objętości sześcianu
	Code2.o     # plik obiektowy, stworzony przez kompilator języka C

Uruchomienie programu Code2:
	
	./Code2
	
-------------------------------------------------------------------------------------

Aby usunąć pliki powstałe podczas kompilacji, należy użyć polecenia:
		
		make clean

To polecenie usuwa pliki: Code2, Code2.o, pole.a, objetosc.so 
Pliki źródłowe i nagłówkowe oraz Makefile zostają. 
Dzięki temu można zainstalować program jeszcze raz.

-------------------------------------------------------------------------------------

Historia rozwoju Code2:

1. commit: utworzenie repozytorium
         - dodanie plików źródłowych: pole.c objetosc.c Code2.c
         - dodanie plikow nagłówkowych: pole.h objetosc.h

2. commit: dodanie najprostrzego pliku Makefile.
           Makefile pozwala zbudować, skompilować i zainstalować program Code2

3. commit: użycie zmiennych automatycznych w Makefile

4. commit: rozbudowa Makefile o reguły przyrostków

5. commit: wykorzystanie reguł wzorca w Makefile

6. commit: Uzupełnienie pliku README.md

---------------------------------------------------------------------------------------

Wynik polecenia make clean:

	> make Code2
	gcc -c Code2.c
	gcc -c pole.c
	ar rcs pole.a pole.o
	gcc -fPIC -c objetosc.c
	gcc -shared -o objetosc.so objetosc.o
	gcc -o Code2 Code2.o pole.a ./objetosc.so
	
Output Code2 dla ustalonej (= 5) wartości długość boku kwadratu /krawędzi sześcianu:

	Pole kwadratu o boku     5.00 wynosi:    25.00
	Objetosc szescianu o krawedzi     5.00 wynosi:   125.00
	

		
