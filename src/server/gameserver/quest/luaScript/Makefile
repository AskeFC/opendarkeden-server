#----------------------------------------------------------------------
# Directories Setting
#----------------------------------------------------------------------
VSHOME   = ../../../../..
STLDIR   = /usr/include/STL
BINDIR   = $(VSHOME)/bin
LIBDIR   = $(VSHOME)/lib
LOGDIR   = $(VSHOME)/log
SRCDIR   = ../../../..
COREDIR  = ../../../../Core
SERVDIR  = ../../..
DBDIR    = ../../../database
GSDIR    = ../..
LSDIR    = ../../../loginserver

#----------------------------------------------------------------------
# General Rules
#----------------------------------------------------------------------
.SUFFIXES    : .cpp .o

CC       = g++
DEFS     = -D__LINUX__ -D_REENTRANT
INCLUDES = -I$(STLDIR) -I$(COREDIR) -I$(SERVDIR) -I$(GSDIR)
CCFLAGS  = -std=c++14 -Wall -c -g -m64 -mcmodel=large -O3 -march=native -mtune=native -mpclmul -pthread -flto=auto -ffat-lto-objects -mtls-dialect=gnu2 -fstack-protector-all -mstack-protector-guard=tls
#CCFLAGS  = -Wall -c -g
#LIBS     = -L$(LIBDIR) -lItems -lQuest -lGameServerDatabase -lServerCore -lGameServerPackets -lSkill -lCore -lGameServerBilling -lSimpleQuest
#SYSLIBS  = -llua -llualib

.cpp.o :
	$(CC) $(CCFLAGS) $(DEFS) $(INCLUDES) $<

#main.o 
OBJS = LuaState.o \
		LuaScript.o \
		LuaSelectItem.o \
		LuaTradeEventSlayerItem.o \
		LuaTradeEventVampireItem.o

#TARGET = lt
TARGET = $(LIBDIR)/libLuaScript.a

all : $(TARGET)
#	$(MAKE)	$(TARGET)

$(TARGET) : $(OBJS)
#	$(CC) -o $@ $(OBJS) $(SYSLIBS)
	ar r $@ $(OBJS)

clean :
	rm -f *.o

cleanall :
	rm -f *.o $(TARGET)

depall :
	gccmakedep $(SRCS) $(INCLUDES)

dep :
	gccmakedep $(SRCS) $(INCLUDES)


