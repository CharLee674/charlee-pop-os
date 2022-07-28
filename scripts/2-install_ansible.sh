#!/usr/bin/bash


install_ansible() {
	# ensures ansible uses python3
	apt install python-setuptools -y
	apt install python3-pip -y
	pip3 install ansible

	# check if deb line added already
	if ! grep http://ppa.launchpad.net/ansible/ansible/ubuntu /etc/apt/sources.list ; then
        # install ansible
		echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
		echo "Adding ubuntu deb to sources.list"
	fi

	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
	apt update
	apt install ansible -y
}

echo "installing ansible..."
install_ansible
echo "done..."
