CXXFLAGS += -O2 -Wall -g -lpthread -pthread -static

all: test

test: RCSwitch.o RcOok.o Sensor.o test.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi -lrt

clean:
	$(RM) *.o test -lrt
