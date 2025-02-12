#!/bin/env bash

BOLD="\033[1m"
NOCOLOR="\033[0m"

randomQuote=$(shuf -n 1 quotes.txt)

quote=$(echo "$randomQuote" | cut -d '-' -f 1)
source=$(echo "$randomQuote" | cut -d '-' -f 2)

echo -e "\n${BOLD}${quote}${NOCOLOR}\n"
echo -e "— ${source}\n"
