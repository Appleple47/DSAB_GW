PROGS = gen enc_13 syn seq dec_13 eval
DATA = encdata syndna seqdata decdata orgdata
CC = gcc
CFLAGS = -Wall

all: gen enc_13 syn seq dec_13 eval

.c:
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm  $(PROGS) $(DATA)
