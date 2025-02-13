#!/bin/env bash

# Define color codes for formatting output
BOLD="\033[1m"
NOCOLOR="\033[0m"
RED="\033[31m"
WRAP_WIDTH=60 # Set the maximum width for wrapping text

# Check if quotes.txt exists
if [[ ! -f quotes.txt ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} quotes.txt not found!\n"
  exit 1
fi 

# Check if greetings.txt exists
if [[ ! -f greetings.txt ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} greetings.txt not found!\n"
  exit 1
fi

# Get a random quote from quotes.txt
randomQuote=$(shuf -n 1 quotes.txt 2>/dev/null)
if [[ $? -ne 0 ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} Failed to get a random quote.\n"
  exit 1
fi

# Get a random greeting from greetings.txt
randomGreeting=$(shuf -n 1 greetings.txt 2>/dev/null)
if [[ $? -ne 0 ]]; then
  echo -e "\n${RED}${BOLD}Error:${NOCOLOR} Failed to get a random greeting.\n"
  exit 1
fi

# Extract the quote and the source from the random quote
quote=$(echo "$randomQuote" | cut -d '-' -f 1)
source=$(echo "$randomQuote" | cut -d '-' -f 2)

# Wrap long quotes and greetings to ensure they fit within the specified width
wrappedQuote=$(echo "$quote" | fold -s -w $WRAP_WIDTH)
wrappedSource=$(echo "$source" | fold -s -w $WRAP_WIDTH)

# Print the quote and source with bold formatting
echo -e "\n${BOLD}${wrappedQuote}${NOCOLOR}\n"
echo -e " — ${BOLD}${wrappedSource}${NOCOLOR}\n"
echo -e "  "${randomGreeting}"\n" # Print the greeting
