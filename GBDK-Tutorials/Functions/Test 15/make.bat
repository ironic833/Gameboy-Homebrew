lcc -Wa-l -Wl-ba0 -c -o savestate.o savestate.c
lcc -Wa-l -c -o main.o main.c
lcc -Wl-yt3 -Wl-yo4 -Wl-ya4 -o main.gb main.o savestate.o 