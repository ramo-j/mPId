# Makefile generated by genmake.pl
# Written by Ramo

CC=g++
BUILD=build
DIST=dist
CCFLAGS=-c -g -Wall
LDFLAGS=-o $(DIST)/prog -lwiringPi -lwiringPiDev -lmpdclient -lpthread 

all:	$(DIST)/prog
$(DIST)/prog:	$(BUILD) $(DIST) $(BUILD)/interrupts.o $(BUILD)/mpdConn.o $(BUILD)/main.o $(BUILD)/screenLayout.o 
	$(CC) $(BUILD)/*.o $(LDFLAGS)
$(BUILD)/interrupts.o:	interrupts.cpp mpdConn.h interrupts.h
	$(CC) interrupts.cpp $(CCFLAGS) -o $(BUILD)/interrupts.o
$(BUILD)/mpdConn.o:	mpdConn.cpp mpdConn.h
	$(CC) mpdConn.cpp $(CCFLAGS) -o $(BUILD)/mpdConn.o
$(BUILD)/main.o:	main.cpp mpdConn.h screenLayout.h interrupts.h
	$(CC) main.cpp $(CCFLAGS) -o $(BUILD)/main.o
$(BUILD)/screenLayout.o:	screenLayout.cpp screenLayout.h
	$(CC) screenLayout.cpp $(CCFLAGS) -o $(BUILD)/screenLayout.o
$(BUILD):
	@mkdir $(BUILD)
$(DIST):
	@mkdir $(DIST)
clean:
	rm -rf $(BUILD) $(DIST)
love:
	@echo Not war
