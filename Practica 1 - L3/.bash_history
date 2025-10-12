clear
lsblk
fdisk /dev/sdb
clear
lsblk
fdisk /dev/sdc
clear
lsbls
lsblk
clear
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1
dnf install mdadm
clear
mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1
mdadm --detail /dev/md0
pvcreate /dev/md0
pvs
vgcreate vg_raid1 /dev/md0
lvcreate -n new_var -L 1.8G vg_raid1
lvs
clear
dnf install cryptsetup -y
man cryptsetup
clear
cryptsetup luksFormat /dev/vg_raid1/new_var
cryptsetup luksOpen /dev/vg_raid1/new_var vg_raid1-new_var_crypt
cryptsetup luksFormat /dev/vg_raid1/new_var
cryptsetup luksOpen /dev/vg_raid1/new_var vg_raid1-new_var_crypt
blkid | grep crypto > /etc/crypttab
vi /etc/crypttab
clear
mdadm --details /dev/md0
mdadm --detail /dev/md0
clear
mkfs -t xfs /dev/mapper/vg_raid1-new_var_crypt
mkdir /new_var
mount /dev/mapper/vg_raid1-new_var-crypt /new_var
mount /dev/mapper/vg_raid1-new_var_crypt /new_var
systemctl isolate rescue
systemctl status
cp -a /var/. /new_var/
ls -laZ /var
clear
man fstab
vi /etc/fstab
mount -a
vi /etc/fstab
mount -a
umount /dev/mapper/vg_raid1-new_var_crypt
mv /var /var_old
vi /etc/fstab
mkdir /var
mount -a

