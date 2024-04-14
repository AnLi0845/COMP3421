## Pre-requisites:
1.	Cloud environment
 - An AWS account with admin privilege.
 - AWS LightSail instance.
 - Select Linux/Unix as platform.
 - Select LAMP (PHP 8) as blueprint (Apps + OS).
3.	Local environment
 - Bitnami LAMP or any other Linux with LAMP stack installed.
 - VMware player or VirtualBox.

## Step-by-Step Guide
1.	Login in into Instance/VM, install git sudo apt-get install git-all
2.	Go to directory /opt/bitnami/apache/htdocs/top
3.	Clone the github repository 
git clone https://github.com/AnLi0845/COMP3421.git
4.	Move all files from COMP3421 to /opt/bitnami/apache/htdocs/top
cd comp3421
mv * /opt/bitnami/apache/htdocs/top
5.	Edit the db.php: add the db_password = “your_password”;
The application password can be found from virtual machine console when it starts up for Bitnami LAMP or cat bitnami_application_password for cloud environment.
6.	Login into MarinDB or MySQL, username root for Bitnami, password same as step 5.
7.	Create a database named comp3421_finalproject.
8.	Import the dump file to MariaDB. The dump is inside the ‘sql phpmyadmin’ folder and is named comp3421_finalproject.sql.
Accessing the Web Application
Accessing the Web Application at the http://Your_Server_IP/ for local environment, or Your public static IPv4 address for cloud environments (AWS lightsail).
##
Detailed Demo can be found at https://comp3421.ancatlab.com (Hong Kong access only).
