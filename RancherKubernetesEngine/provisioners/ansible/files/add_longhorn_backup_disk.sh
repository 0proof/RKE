mkfs.ext4 -m 0 -F -L Longhorn_bak_disk1 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdd1
mkdir -p /export

echo 'LABEL=Longhorn_bak_disk1     /export          ext4        defaults        0 0' >> /etc/fstab
mount -av

echo 'Add /etc/export entry for backup share and export it'
echo '/export 10.154.0.0/255.255.255.0(rw,sync,no_subtree_check)' >> /etc/exports
exportfs -av

echo "added fstab entry and exports entry !" >> /home/adm/added_fstab_entry.txt
