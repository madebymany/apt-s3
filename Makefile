#!/usr/bin/make
# vim: tabstop=4 softtabstop=4 noexpandtab fileencoding=utf-8

DIRS:= src

all:
	for d in $(DIRS); do (cd $$d; $(MAKE) $(MFLAGS)); done;

clean:
	for d in $(DIRS); do (cd $$d; $(MAKE) clean); done;
	rm -rf debian/apt-transport-s3*

install:
	mkdir -p /usr/lib/apt/methods/
	cp src/s3 /usr/lib/apt/methods/
