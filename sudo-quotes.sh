#!/bin/env bash

BOLD="\033[1m"
NOCOLOR="\033[0m"

randomQuote=$(shuf -n 1 quotes.txt)
randomGreeting=$(shuf -n 1 greetings.txt)

quote=$(echo "$randomQuote" | cut -d '-' -f 1)
source=$(echo "$randomQuote" | cut -d '-' -f 2)

echo -e "\n${BOLD}${quote}${NOCOLOR}\n"
echo -e "— ${BOLD}${source}${NOCOLOR}\n"
echo -e "— ${randomGreeting}\n"
