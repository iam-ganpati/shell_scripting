#!/bin/bash

# Function to prompt user for input
get_input() {
    read -p "$1: " input
    echo "$input"
}

# Prompt user for common name
common_name=$(get_input "Enter Common Name")

# Prompt user for challenge password
challenge_password=$(get_input "Enter Challenge Password")

# Generate RSA private key
openssl genrsa -des3 -out "$common_name.key" 2048

# Remove passphrase from the private key
openssl rsa -in "$common_name.key" -out "$common_name.key"

# Generate CSR (Certificate Signing Request)
openssl req -new -key "$common_name.key" -out "$common_name.csr" \
    -subj "/C=US/ST=Indiana/L=Columbus/O=Cummins/CN=$common_name" \
    -passout pass:"$challenge_password"

<<EOF
#!/bin/bash

# Function to prompt user for input
get_input() {
    read -p "$1: " input
    echo "$input"
}

# Prompt user for common name
common_name=$(get_input "Enter Common Name")

# Set fixed passphrase for private key
passphrase="1234"

# Prompt user for challenge password
challenge_password="1234"

# Generate RSA private key with passphrase
openssl genrsa -des3 -out "$common_name.key" -passout pass:"$passphrase" 2048

# Remove passphrase from the private key
openssl rsa -in "$common_name.key" -out "$common_name.key" -passin pass:"$passphrase"

# Generate CSR (Certificate Signing Request)
openssl req -new -key "$common_name.key" -out "$common_name.csr" \
    -subj "/C=US/ST=Indiana/L=Columbus/O=Cummins/CN=$common_name" \
    -passout pass:"$challenge_password"
EOF