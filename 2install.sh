sed -i 's/}}1/}}p1/g' archinstall/roles/common/tasks/*
sed -i 's/}}2/}}p2/g' archinstall/roles/common/tasks/*
sed -i 's/}}1/}}p1/g' archinstall/roles/uefi/tasks/*
sed -i 's/}}2/}}p2/g' archinstall/roles/uefi/tasks/*

pacman-key --add /root/jhoffer.gpg
pacman-key --lsign-key jhoffer@mines.edu
ansible-playbook -i archinstall/hosts archinstall/site.yml --ask-vault-pass
