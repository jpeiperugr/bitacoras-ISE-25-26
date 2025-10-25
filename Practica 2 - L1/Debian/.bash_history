ip addr
ip addr add 192.168.56.105/24 dev enp0s8
ip link set enp0s8 up
clear
ping 192.168.56.110
clear
apt install netplan.io
systemctl enable --now systemd-networkd
systemctl disable --now networking
clear
vi /etc/netplan/00-installer-config.yaml
netplan apply
clear
apt install openssh-server
clear
systemctl status sshd
systemctl start sshd
systemctl enable sshd
clear
ssh root@192.168.56.110
clear
nano /etc/ssh/sshd_config
systemctl restart sshd
ss -tuln
nano /etc/ssh/sshd_config
systemctl restart sshd
clear
apt install ufw -y
ufw status
clear
ufw enable
ufw allow 22022

