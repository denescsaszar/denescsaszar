#!/bin/bash

# Define the file for snippets
SNIPPET_FILE="daily_snippets.txt"

# Fetch a random quote from the API (ensure to get the quote in single quotes)
QUOTE=$(curl -s "https://api.quotable.io/random" | jq -r '.content')

# Add the quote to the file with the current date
echo "$(date +'%Y-%m-%d'): '$QUOTE'" >> $SNIPPET_FILE

# Add and commit changes
git add $SNIPPET_FILE
git commit -m "'✨ Daily commit: $(date +'%Y-%m-%d') - $QUOTE'"

# Push to GitHub
git push origin main


