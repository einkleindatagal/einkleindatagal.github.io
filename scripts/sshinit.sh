#!/bin/bash

# Check if an email address is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Don't forget your email. Try again with: $0 <email-address>"
    exit 1
fi

EMAIL="$1"

ssh-keygen -t ed25519 -C "$EMAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub