CFLAGS := -g3 -O2 -Wall
LDFLAGS :=
SRCS := pft.c ptm2human.c stream.c
OBJS := $(SRCS:.c=.o)

CC ?= gcc
LD ?= ld

all: ptm2human

ptm2human: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

%.o: %.c log.h pftproto.h stream.h
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(OBJS) ptm2human

.PHONY: clean all
