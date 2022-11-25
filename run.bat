@echo off
if not exist "bin\" mkdir bin
if not exist "obj\" mkdir obj

cc65 -t vic20 -O -o obj/main.s src/main.c
ca65 -t vic20 -o obj/main.o obj/main.s
ld65 -t vic20 -o bin/main.prg obj/main.o vic20.lib

xvic bin/main.prg
