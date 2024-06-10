#!/bin/bash
# Update the package repository
sudo apt-get update -y

# Install prerequisite packages
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Add the ubuntu user to the docker group
sudo usermod -aG docker ubuntu

# Verify that Docker Engine is installed correctly by running the hello-world image
sudo docker run hello-world


#install nginx
sudo apt update -y
sudo apt install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

#create users
# sudo su
# mkdir /home/alice
# useradd -d /home/alice -b /bin/bash alice
# echo alice:password1 | sudo chpasswd
# chsh -s /bin/bash alice

# sudo su
# mkdir /home/james
# useradd -d /home/james -b /bin/bash james
# echo james:password2 | sudo chpasswd
# chsh -s /bin/bash james

# sudo su
# mkdir /home/john
# useradd -d /home/john -b /bin/bash john
# echo john:password3 | sudo chpasswd
# chsh -s /bin/bash john

# #create group
# sudo groupadd agroup
# sudo groupadd bgroup
# sudo groupadd cgroup
# sudo groupadd dgroup

#pull simplepersonal website
sudo su
cd /var/www
rm -rf html 
mkdir html
cd html
git clone https://github.com/monyslim/books-app-1 .