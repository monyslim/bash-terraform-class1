#!/bin/bash

# Define the file containing user details
file="names.txt"

# Loop through each line of the file
while read -r line; do
    # Extract user details from the current line
    user=$(echo "$line" | cut -d: -f1)
    password=$(echo "$line" | cut -d: -f2)
    user_id=$(echo "$line" | cut -d: -f3)
    group=$(echo "$line" | cut -d: -f4)

    # Create the group directly
    sudo groupadd "$group"

    # Create the user directly and check if the command was successful
    sudo useradd -m -d "/home/$user" -s "/bin/bash" -u "$user_id" "$user"
    if [[ $? -eq 0 ]]; then
        echo "User $user created successfully"
    else
        echo "Failed to create user $user"
        continue
    fi

    # Add the user to the specified group
    sudo usermod -aG "$group" "$user"
    if [[ $? -eq 0 ]]; then
        echo "User $user added to group $group successfully"
    else
        echo "Failed to add user $user to group $group"
    fi

    # Set the user's password
    echo "$user:$password" | sudo chpasswd
    if [[ $? -eq 0 ]]; then
        echo "Password for $user set successfully"
    else
        echo "Failed to set password for $user"
    fi

    # Print the user details
    echo "$user:$password:$user_id:$group"

done < "$file"
