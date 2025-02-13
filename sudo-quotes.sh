#!/bin/env bash

BOLD="\033[1m"
NOCOLOR="\033[0m"
RED="\033[31m"
WRAP_WIDTH=60

if [[ ! -f quotes.txt ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} quotes.txt not found!\n"
  exit 1
fi 

if [[ ! -f greetings.txt ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} greetings.txt not found!\n"
  exit 1
fi

randomQuote=$(shuf -n 1 quotes.txt 2>/dev/null)
if [[ $? -ne 0 ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} Failed to get a random quote.\n"
  exit 1
fi

randomGreeting=$(shuf -n 1 greetings.txt 2>/dev/null)
if [[ $? -ne 0 ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} Failed to get a random greeting.\n"
  exit 1
fi

quote=$(echo "$randomQuote" | cut -d '-' -f 1)
source=$(echo "$randomQuote" | cut -d '-' -f 2)

wrappedQuote=$(echo "$quote" | fold -s -w $WRAP_WIDTH)
wrappedGreeting=$(echo "$source" | fold -s -w $WRAP_WIDTH)

echo -e "\n${BOLD}${wrappedQuote}${NOCOLOR}\n"
echo -e " — ${BOLD}${wrappedGreeting}${NOCOLOR}\n"
echo -e "  "${randomGreeting}"\n"
