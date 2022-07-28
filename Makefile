install:
	/usr/bin/bash ./scripts/1-start.sh
	/usr/bin/bash ./scripts/2-install_ansible.sh
	/usr/bin/bash ./scripts/3-run_ansible.sh

setup:
	/usr/bin/bash ./scripts/1-start.sh
	/usr/bin/bash ./scripts/2-install_ansible.sh

ansible:
	/usr/bin/bash ./scripts/3-run_ansible.sh

