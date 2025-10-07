#!/bin/bash

# debug

echo "构建debug版本"

gcc -g -c src/main.c -o obj/main.o
gcc -g -c src/buffer.c -o obj/buffer.o
gcc -g -c src/editor.c -o obj/editor.o
gcc -g -c src/tool.c -o obj/tool.o

gcc -g obj/main.o obj/buffer.o obj/editor.o obj/tool.o -o bin/skin_ini_editor_debug

echo "构建完成：bin/skin_ini_editor_debug"
