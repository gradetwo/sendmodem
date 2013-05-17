SRCS=sendmodem.c
OBJS=$(SRCS:%.c=%.o)
CC=arm-apple-darwin-gcc
CFLAGS=-fsigned-char -DEMBEDDED -DNO_CGI
LDFLAGS=-Wl
LD=$(CC)

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

sendmodem: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

clean:
	rm -rf $(OBJS) sendmodem

