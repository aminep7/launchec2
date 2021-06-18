#!/bin/bash
sudo su
yum -y install httpd
echo "<p> This instance has Apache Benchmark installed for QAT stress Test! </p>" >> /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd