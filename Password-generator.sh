#! /usr/bin/bash

# Function to generate random password
generate_password() {
    local length=$1
    local password=$(LC_ALL=C tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w $length | head -n 1)
    echo "$password"
}

# Prompt for password length
read -sp "Enter password length: " password_length
echo

# Generate password
password=$(generate_password $password_length)

# Output the generated password
echo "Generated password: $password"
