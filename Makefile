all : 1m_block

1m_block: main.o boyer_moore.o
	g++ -std=c++11 -g -o 1m_block main.o boyer_moore.o -lnetfilter_queue

boyer_moore.o: boyer_moore.cpp boyer_moore.h
	g++ -std=c++11 -g -c -o boyer_moore.o boyer_moore.cpp

main.o: main.cpp boyer_moore.h
	g++ -std=c++11 -g -c -o main.o main.cpp -lnetfilter_queue

clean:
	rm -f 1m_block
	rm -f *.o
