ssh-keygen
clear
ssh-copy-id -p 22022 jpeiper@192.168.56.105
sudo nano /etc/ssh/sshd_config
clear
sudo systemctl restart sshd
ssh -p 22022 192.168.56.105
clear
sudo nano /etc/ssh/sshd_config
systemctl restart sshd
clear
dnf install epel-release -y
dnf install fail2ban -y
clera
clear
systemctl status fail2ban
clear
cp -a /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo nano /etc/fail2ban/jail.local
systemctl restart fail2ban
clear
fail2ban-client status sshd
fail2ban-client set sshd unbanip 192.168.56.105
dnf provides sshfs -y
dnf install fuse-sshfs -y
clear
dnf install screen -y
clear
dnf install httpd php mariadb mariadb-server php-mysqlnd -y
clear
sudo systemctl status httpd
sudo systemctl enable httpd
sudo systemctl start httpd
clear
curl 127.0.0.1
sudo firewall-cmd --add-port=80/tcp --permanent
sudo firewall-cmd --reload
clear
php -a 
sudo systemctl status mariadb
sudo systemctl enable mariadb
sudo systemctl start mariadb
sudo mysql -u root
clear
sudo mysql_secure_installation
sudo mysql -u root -p
clear
sudo nano /etc/httpd/conf/httpd.conf
sudo systemctl restart httpd
clear
sudo nano /var/www/html/index.php
clear
sudo mysql -u root -p
clear
getsebool -a | grep httpd
getsebool -a | grep httpd_can_network
setsebool -P httpd_can_network_connect_db=on
clear
