dnf install iptables
clear
ip addr
ip addr add 192.168.56.110/24 dev enp0s8
ping 192.168.56.105
clear
nmcli con add type ethernet ifname enp0s8 con-name enp0s8 ipv4.addresses 192.168.56.110/24 ipv4.gateway 192.168.56.1 ipv4.method manual
systemctl restart NetworkManager
clear
ping 8.8.8.8
clear
systemctl status sshd
ssh jpeiper@192.168.56.105
clear
ssh jpeiper@192.168.56.105 -p 22022
clear
nano /etc/ssh/sshd_config
systemctl restart sshd
ss -tuln
nano /etc/ssh/sshd_config
clear
dnf provides semanage
dnf install policycoreutils-python-utils-xxx -y
dnf install policycoreutils-python-utils -y
semanage port -l | grep ssh
semanage port -a -t ssh_port_t -p tcp 22022
systemctl restart sshd
clear
firewall-cmd --add-port 22022/tcp --permanent
firewall-cmd --reload
clear