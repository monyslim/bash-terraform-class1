#!/bin/bash
file="/home/ubuntu/names.txt"

while read line;
  do
      current_line=$(echo "$line")
			
      # get the user from user part
      user=$(echo "$current_line" | cut -d: -f1)
      
      # get the password from password area
      password=$(echo "$current_line" | cut -d: -f2)
	  
    
      # get id from user part
      user_id=$(echo "$current_line" | cut -d: -f3)
      
      ## get the group from part
      group=$(echo "$current_line" | cut -d: -f4)

      # Create the group directly
      sudo groupadd "$group"
			
      # Create the user directly
      sudo useradd -m -d "/home/$user" -s "/bin/bash" -u "$user_id" "$user"
      
      
      ## Add the user to the specified group
      sudo usermod -aG "$group" "$user"
      echo "User $user added to group $group"
      
      # Set the user's password
      echo "$user:$password" | sudo chpasswd
      
      # Verify if the password was set successfully
      if [[ $? -eq 0 ]]; then
          echo "Password for $user set successfully"
      else
          echo "Failed to set password for $user"
      fi
      echo "$user User created succesfully"
      
      echo $user:$password:$user_id:$group
done < "$file"
