all:
	gcc -c main.c -o main.o
	gcc -c -fPIC producer.c -o producer.o
	gcc -c -fPIC consumer.c -o consumer.o
	gcc -shared consumer.o -o libconsumer.so
	gcc -shared producer.o -o libproducer.so
	gcc main.o producer.o consumer.o -o main_static
	gcc main.o -L. -lproducer -lconsumer -o main_shared
	./setup.py build_ext --inplace
	LD_LIBRARY_PATH=. ./test.py

