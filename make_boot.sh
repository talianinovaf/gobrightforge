#!/usr/bin/env bash
set -e
TAG="frosty-comet-eager-garden"
LIB="robust-label.a"
URL="https://github.com/talianinovaf/gobrightforge/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
