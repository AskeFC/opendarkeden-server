#----------------------------------------------------------------------
#
# Filename    : Makefile
# Written By  : Reiot
# Description :
#
#----------------------------------------------------------------------

#----------------------------------------------------------------------
# Directories Setting
#----------------------------------------------------------------------
VSHOME   = ../../../..
STLDIR   = /usr/include/STL
BINDIR   = $(VSHOME)/bin
LIBDIR   = $(VSHOME)/lib
LOGDIR   = $(VSHOME)/log
SRCDIR   = ../../..
COREDIR  = ../../../Core
SERVDIR  = ../..
DBDIR    = ../../database
SKILLDIR = ../skill
GSDIR    = ..
MYSQLDIR = /usr/local/lib/mysql
CPPUNITDIR = /usr/local/include/cppunit


#----------------------------------------------------------------------
# General Rules
#----------------------------------------------------------------------
.SUFFIXES    : .cpp .o

CC       = g++
DEFS     = -D__LINUX__ -D_REENTRANT -D__GAME_SERVER__
INCLUDES = -I$(STLDIR) -I$(COREDIR) -I$(SERVDIR) -I$(DBDIR) -I$(GSDIR) -I$(SKILLDIR) -I$(CPPUNITDIR) -I.
#CCFLAGS  = -Wall -c -g
CCFLAGS  = -std=c++14 -Wall -c -g -m64 -mcmodel=large -O3 -march=native -mtune=native -mpclmul -pthread -flto=auto -ffat-lto-objects -mtls-dialect=gnu2 -fstack-protector-all -mstack-protector-guard=tls

.cpp.o :
	$(CC) $(CCFLAGS) $(DEFS) $(INCLUDES) $<

#----------------------------------------------------------------------
# Objects
#----------------------------------------------------------------------

OBJS = \
	GameServerTest.o \
	GameServerTester.o \
	GameServerSkillTest.o \
	GameServerExpTest.o \
	GameServerItemTest.o \
	GameServerWarTest.o \
	GameServerSpeedCheckTest.o

SRCS = $(OBJS:.o=.cpp)

TARGET = $(LIBDIR)/libGameServerTest.a


#----------------------------------------------------------------------
# actions
#----------------------------------------------------------------------
all : $(TARGET)

$(TARGET) : $(OBJS)
	ar rc $@ $^

clean :
	rm -rf *.o

cleanall :
	rm -rf *.o $(TARGET)

depall :
	gccmakedep $(SRCS) $(INCLUDES)

dep :
	gccmakedep $(SRCS) $(INCLUDES)

# DO NOT DELETE
