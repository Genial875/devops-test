#!/bin/bash

sudo yum update -y
sudo yum upgrade -y
sudo yum install httpd zip -y
sudo systemctl start httpd
cd /tmp
wget "https://www.tooplate.com/download/2135_mini_finance.zip"
unzip 2135_mini-finance
cp ./* /var/www/html/
echo "Hello world from $(hostname -f)" > /var/www/html/index.html
echo "I am new here"

