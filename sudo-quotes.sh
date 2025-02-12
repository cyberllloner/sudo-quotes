#!/bin/env bash

BOLD='\033[1m'
NOCOLOR='\033[0m'

randomQuote=$(shuf -n 1 quotes.txt)

echo -e "\n$randomQuote\n"
