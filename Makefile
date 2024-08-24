all: create_installation_dir copy_to_installation_dir add_permissions
create_installation_dir:
	sudo mkdir /opt/cp-utils
	sudo mkdir -p /opt/bin
	@echo "Created installation directory at /opt/cp-utils"
copy_to_installation_dir: create_installation_dir
	sudo cp -r ./* /opt/cp-utils/
	sudo mv /opt/cp-utils/contest-creator/create_contest /opt/bin
	sudo mv /opt/cp-utils/contest-creator/create_problem /opt/bin
	sudo mv /opt/cp-utils/snippets/add_snippet /opt/bin
	sudo mv /opt/cp-utils/snippets/remove_snippet /opt/bin
	sudo mv /opt/cp-utils/snippets/update_snippet /opt/bin
	sudo mv /opt/cp-utils/snippets/*.py /opt/bin
	@echo "Installed files"
add_permissions: copy_to_installation_dir
	sudo chmod +x /opt/bin/*.sh
	sudo chmod +x /opt/bin/*.py
	@echo "Added executable permissions"
uninstall:
	sudo rm -rf /opt/cp-utils
	@echo "Removed cp-utils"
	
