#!/bin/bash

rm -r UKLlibevent ukllibevent.a

rm -rf buffer.o bufferevent.o bufferevent_filter.o bufferevent_pair.o bufferevent_ratelim.o bufferevent_sock.o event.o evmap.o evthread.o evutil.o evutil_rand.o evutil_time.o watch.o listener.o log.o strlcpy.o select.o poll.o epoll.o signal.o evdns.o event_tagging.o evrpc.o http.o libevent_openssl_la-bufferevent_openssl.o evthread_pthread.o

gcc -I.  -I./compat -I./include -I./include 	-mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o buffer.o buffer.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o bufferevent.o bufferevent.c

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o bufferevent_filter.o bufferevent_filter.c

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o bufferevent_pair.o bufferevent_pair.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o bufferevent_ratelim.o bufferevent_ratelim.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o bufferevent_sock.o bufferevent_sock.c

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o event.o event.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evmap.o evmap.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evthread.o evthread.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evutil.o evutil.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evutil_rand.o evutil_rand.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evutil_time.o evutil_time.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o watch.o watch.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o listener.o listener.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o log.o log.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o strlcpy.o strlcpy.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o select.o select.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o poll.o poll.c

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o epoll.o epoll.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o signal.o signal.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evdns.o evdns.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o event_tagging.o event_tagging.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evrpc.o evrpc.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o http.o http.c 

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o libevent_openssl_la-bufferevent_openssl.o bufferevent_openssl.c

gcc -I.  -I./compat -I./include -I./include     -mcmodel=kernel -mno-red-zone -ggdb -O2 -c -o evthread_pthread.o evthread_pthread.c

ar cr ukllibevent.a buffer.o bufferevent.o bufferevent_filter.o bufferevent_pair.o bufferevent_ratelim.o bufferevent_sock.o event.o evmap.o evthread.o evutil.o evutil_rand.o evutil_time.o watch.o listener.o log.o strlcpy.o select.o poll.o epoll.o signal.o evdns.o event_tagging.o evrpc.o http.o libevent_openssl_la-bufferevent_openssl.o evthread_pthread.o

ld -r -o UKLlibevent --unresolved-symbols=ignore-all --allow-multiple-definition --whole-archive ukllibevent.a --no-whole-archive 
# ld -r -o libcheck --unresolved-symbols=ignore-all --allow-multiple-definition --whole-archive libevent.a libevent_core.a libevent_extra.a libevent_openssl.a libevent_pthreads.a --no-whole-archive [fedora@uklvm2 unikernel]$ 

echo "DONE"

