mkfs.ext4 -m 0 -F -L Longhorn_disk1 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb1
mkdir -p /var/lib/longhorn/disk1

echo 'LABEL=Longhorn_disk1     /var/lib/longhorn/disk1          ext4        defaults        0 0' >> /etc/fstab
echo "added fstab entry!" >> /home/adm/added_fstab_entry.txt
mount -av
