#!/usr/bin/env bash
set -e
LIB="stuffed-armor.a"
TAG="crimson-harbor-eager-canyon"
REPO="notemuted/kalearraykit"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
