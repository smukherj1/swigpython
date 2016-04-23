
CXX = clang++
CFLAGS = -I/usr/include/python2.7

all: _test.so

test.o: test.cpp test.hpp
	$(CXX) -c -fpic  $(CFLAGS) test.cpp

test_wrap.o: test.i test.hpp test_wrap.cpp
	$(CXX) -c -fpic  $(CFLAGS) test_wrap.cpp

_test.so: test.o test_wrap.o
	$(CXX) -shared test.o test_wrap.o -o _test.so

test_wrap.cpp: test.i test.hpp
	swig -python -c++ -o test_wrap.cpp test.i

clean:
	-rm -f *_wrap.* *.pyc test.py *.o *.so