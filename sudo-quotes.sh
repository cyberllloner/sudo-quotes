#!/bin/env bash

randomQuote=$(shuf -n 1 quotes.txt)

echo -e "\n$randomQuote\n"
