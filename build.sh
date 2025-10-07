#!/bin/bash

gcc -c src/main.c -o obj/main.o
gcc -c src/buffer.c -o obj/buffer.o
gcc -c src/editor.c -o obj/editor.o
gcc -c src/tool.c -o obj/tool.o

gcc obj/main.o obj/buffer.o obj/editor.o obj/tool.o -o bin/skin_ini_editor

# debug
gcc -g -c src/main.c -o obj/main.o
gcc -g -c src/buffer.c -o obj/buffer.o
gcc -g -c src/editor.c -o obj/editor.o
gcc -g -c src/tool.c -o obj/tool.o

gcc -g obj/main.o obj/buffer.o obj/editor.o obj/tool.o -o bin/skin_ini_editor_debug

#win
x86_64-w64-mingw32-gcc -c src/main.c -o obj/main.o
x86_64-w64-mingw32-gcc -c src/buffer.c -o obj/buffer.o
x86_64-w64-mingw32-gcc -c src/editor.c -o obj/editor.o
x86_64-w64-mingw32-gcc -c src/tool.c -o obj/tool.o

x86_64-w64-mingw32-gcc obj/main.o obj/buffer.o obj/editor.o obj/tool.o -o bin/skin_ini_editor.exe
