#!/bin/bash

echo "[+] Setting up your challenge..."

# Define a random hidden directory
CHALLENGE_DIR="$HOME/.config/.hidden_$(openssl rand -hex 4)"
mkdir -p "$CHALLENGE_DIR"

# Generate a random file name
CHALLENGE_FILE="$CHALLENGE_DIR/flag_$(openssl rand -hex 6).txt"

# Write a secret challenge message
echo "FLAG{you_found_the_hidden_file}" > "$CHALLENGE_FILE"

# Change permissions to make it harder to find
chmod 400 "$CHALLENGE_FILE"

echo "[+] Challenge is set up! Now find the secret file..."
