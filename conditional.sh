#!/bin/bash

# # Prompt for user input
# echo "Enter your age:"
# read age

# # Conditional statement to check age
# if [ "$age" -lt 18 ]; then
#   echo "You are kid."
# else
#   echo "You are adult."
# fi

# age=12
# if [ $age == “James” ]
# then
#         echo “Positive”
# else
#         echo “This is the wrong user”
# fi

# Prompt for user input
# echo "Enter a number:"
# read number

# # Conditional statement to check the number
# if [ "$number" -ge 0 ]; then
#   echo "The number is positive."
# elif [ "$number" -le 0 ]; then
#   echo "The number is negative."
# else
#   echo "The number is zero."
# fi

# Prompt for user input
# echo "Enter a number between 1 and 10:"
# read number

# # Conditional statement using logical AND
# if [ "$number" -ge 1 ] && [ "$number" -le 10 ]; then
#   echo "The number is within the range."
# else
#   echo "The number is out of range."
# fi

# # Prompt for user input
# echo "Enter your username:"
# read username

# # Conditional statement to check username
# if [ "$username" = "admin" ]; then
#   echo "Welcome, admin!"
# else
#   echo "Welcome, $username!"
# fi

# Generate a random number between 1 and 10
# target=$(( RANDOM % 10 + 1 ))

# # Prompt the user to guess the number
# echo "Guess the number between 1 and 10:"
# read guess

# # Conditional statements to check the guess
# if [ "$guess" -eq "$target" ]; then
#   echo "Congratulations! You guessed the correct number."
# elif [ "$guess" -lt "$target" ]; then
#   echo "Too low! The correct number was $target."
# else
#   echo "Too high! The correct number was $target."
#fi

# file="example.txt"

# if [ -f "$file" ]; then
#   echo "File $file exists and is a regular file."
# else
#   echo "File $file does not exist or is not a regular file."
# fi

# if [ -f “images.png” ]
#         then
#                echo “The images folder exists already moving on ...”
#                sleep 0.5
# else
#        touch “images.png”
# fi

# cwd=$(pwd)
# echo $cwd
# if [ -f "$cwd/images.png" ]
#     then
#          echo "the image file exist check again ..."
#  else
#      touch "images.png"
#  fi

# directory="example_directory"

# if [ -d "$directory" ]; then
#   echo "Directory $directory exists."
# else
#   if mkdir "$directory"; then
#     echo "Created directory successfully"
#   else
#     echo "Failed to create directory $directory"
#   fi
# fi

# file="example.txt"

# if [ -f "$file" ]; then
#   echo "File $file exists and is a regular file."
# else
#   touch "$file"  # Create the file if it doesn't exist
#   if [ -f "$file" ]; then
#     echo "File $file created successfully."
#   else
#     echo "Failed to create file $file."
#   fi
# fi

# echo "Enter your age:"
# read age

# if [ $age -le 20 ] || [ $age -gt 60 ]; 
# then
#     echo "You are a semi-adult"
# else
#     echo "You are an adult"  # This else covers ages between 21 and 60
# fi

# create_users(){
#     ## Create a user
#     echo "Enter a username:"
#     read username
#     echo "Enter a password:"
#     read password
#     echo "Enter a user ID:"
#     read user_id
#     echo "Enter a group name:"
#     read group_name
#     sudo useradd -m -d /home/$username -s /bin/bash $username -p $password -u $user_id
#     sudo groupadd $group_name
#     sudo usermod -aG $group_name $username
#     echo "$username User created succesfully"
# }
# delete_users(){
#     echo "Enter a username to delete:"
#     read username
#     sudo userdel -r $username
# }
# create_users
# delete_users

# username=james
# list_inventory(){
#       echo "           Welcome to Directory Creator
#       ................................................................
#                by Must Mika"

# local username=john
# echo $username
# }
# list_inventory
# echo $username

# list_inventory(){
#       echo "         Welcome to Directory Creator
#       -------------------------------
#                       by Yusuf Clust" 


# read -p "Enter the name of the inventory file: " inventory_name

# echo $inventory_name

# if [[ ! -f $inventory_name ]]
# then
#         echo "File does not exist"
#         exit 1
# else
#         while read -r line
#         do 
#                 echo $line
#      done < $inventory_name 

# fi

# }

# list_inventory
# greet() {
#     echo $#
#     echo "Hello, $1 Today is $2." ## The $numbers are called parameters
# }

# greet "Alice" "Monday" ## This is to call greet function with two arguments
# Extracting the username from the 'myname' variable



file="hours.txt"

while read -r line;
    do
        current_line=$(echo "$line")
        ## Extract the user area alone
        username=$(echo "$current_line" | cut -d: -f1)
        
        ## Extract the username alone
        userid=$(echo "$username" | cut -d= -f2)

        ## Extract the password area alone
        password=$(echo "$current_line" | cut -d: -f2)
        
        ## Extract the passwords alone
        password_user=$(echo "$password" | cut -d= -f2)
echo $userid:$password_user
done < $file
