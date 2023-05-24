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


:'The generate_password() function takes the desired password length as an argument and generates a random password using the tr and fold commands.
The tr command is used to delete characters that are not alphanumeric from the input stream (/dev/urandom as the source of randomness).
The fold command wraps the input into lines of the specified length.
The head -n 1 command selects the first line (i.e., the generated password).
The script prompts the user to enter the desired password length.
The generate_password() function is called with the provided length to generate the password.
The generated password is then displayed as the output.
To execute the script, save it to a file (e.g., password_generator.sh), make it executable (chmod +x password_generator.sh), and run it (./password_generator.sh). The script will prompt you to enter the desired password length and then display the generated password.'