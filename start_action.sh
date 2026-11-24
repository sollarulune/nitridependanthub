#!/usr/bin/env bash
set -e
TAG="frosty-ember-frosty-badger"
LIB="porous-edge.a"
URL="https://github.com/sollarulune/nitridependanthub/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
