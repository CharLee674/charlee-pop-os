#!/usr/bin/bash

main_dir="$PWD/ansible"

run_playbook() {
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	ansible-galaxy install rarrais.ros
	ansible-galaxy install gantsign.visual-studio-code
	ansible-galaxy collection install manala.roles
	eval "ansible-playbook $main_dir/main.yml -kK"
}

echo "running ansible..."
run_playbook
