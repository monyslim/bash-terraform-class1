#!/bin/bash
# MyName="Desire, John, Kamau, Oluwadamilola, Helen, Ayomide"
# echo $MyName
# name="World"
# echo "Hello $name"
# echo "The date is $(date)"

# Declare variables
# name="David"
# age=25
# city="Lagos"

# # Print out the values stored
# echo "Name: $name"
# echo "Age: $age"
# echo "City: $city"

# # Perform operations with variables
# birth_year=$((2024 - $age))
# greeting="Hello, $name! You live in $city, and you were likely born in $birth_year."

# # Display the final message
# echo "$greeting"

# Using different naming conventions for varibales in bash
## Snake Casing
# my_name_is="Oluwadamilola"
# echo $my_name_is

## Camel Casing
# myNameIs="Oluwadamilola"
# echo $myNameIs

# # ## Pascal Casing
# MyNameIs="Oluwadamilola"
# echo $MyNameIs

# Write output to a file
# echo "You look like a pumpkin!" >> test.txt

# Read from a file

# file="user_details.txt"
# while read -r line; 
#    do
#       echo "$line"
# done < "$file"

# Prompt for user input
# echo "Enter your name:"
# read name
# echo "Hello, $name!"

# Pipe data between commands
# ls -l | grep ".sh"









# # Prompt the user for their address
# echo "Hello, enter your address:"
# read address

# # Specify the file to store the address
# output_file="test.txt"

# # Store the address in the file
# echo "$address" > "$output_file"

# # Notify the user
# echo "Your address has been saved to $output_file."


#Prompt the user for their details
echo "Hello, enter your name:"
read name

echo "Enter your age:"
read age

echo "Enter your phone number:"
read phone_number

echo "Enter your marital status:"
read marital_status

echo "Enter your sex (M/F):"
read sex

echo "Enter your religion:"
read religion

echo "Enter your occupation:"
read occupation

echo "Enter your state of origin:"
read state_of_origin

echo "Enter your nationality:"
read nationality

echo "Enter your address:"
read address

# Specify the file to store the details
output_file="user_details.txt"

# Store the details in the file
{
  echo "Your Name is: $name"
  echo "Your Age is: $age"
  echo "Your Phone Number is: $phone_number"
  echo "Your Marital Status is: $marital_status"
  echo "Your Sex is: $sex"
  echo "Your Religion is: $religion"
  echo "Your Occupation: $occupation"
  echo "Your State of Origin: $state_of_origin"
  echo "Your Nationality: $nationality"
  echo "Your Address: $address"
} > "$output_file"

# Notify the user
echo "Your details have been saved to $output_file."


