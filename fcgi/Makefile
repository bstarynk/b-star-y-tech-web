#!/usr/bin/make -f
## file fcgi/Makefile on https://github.com/bstarynk/b-star-y-tech-web
##  Copyright © 2020 Basile Starynkevitch
##
##  This program is free software: you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program.  If not, see <http://www.gnu.org/licenses/>.
.PHONY: all clean fcgi indent

CXX= g++
CC= gcc
CXXFLAGS= $(BSYFGCI_OPTIMFLAGS) $(BSYFCGI_WARNFLAGS) $(BSYFCGI_DIALECT)

CFLAGS=  $(BSYFGCI_OPTIMFLAGS) $(BSYFCGI_WARNFLAGS) -Wno-prototypes
ASTYLE= astyle
ASTYLEFLAGS= --style=gnu -s2
RM= rm -fv
LDFLAGS= -rdynamic -L/usr/local/lib

BSYFCGI_SOURCES := $(sort $(wildcard bsyf_*.cc))
BSYFCGI_HEADERS := $(sort $(wildcard bsyf_*.hh))
BSYFCGI_OBJECTS = $(pathsubst %.cc,%.o,$(BSYFCGI_SOURCES))
BSYFGCI_OPTIMFLAGS = -O1 -g
BSYFCGI_WARNFLAGS = -Wall -Wextra
BSYFCGI_DIALECT= -std=gnu++17

all: fcgi

clean:
	$(RM) *~ *.o b-stary-tech.fcgi
	$(RM) _* *.tmp *~

fcgi: b-stary-tech.fcgi
b-stary-tech.fcgi: _bsyf-timestamp.o $(BSYFCGI_OBJECTS)
	$(LINK.cc) $(LDFLAGS) _bsyf-timestamp.o $(BSYFCGI_OBJECTS) $(BSYFCGI_LIBS) -o $@

_bsyf-timestamp.c: generate-timestamp-bsyf.sh $(BSYFCGI_SOURCES) $(BSYFCGI_HEADERS)
	./generate-timestamp-bsyf.sh $@  $(BSYFCGI_SOURCES) $(BSYFCGI_HEADERS) > $@-tmp
	$(MV)  $@-tmp $@

%.o: %.cc
	$(COMPILE.cc) -c $< -o $@
