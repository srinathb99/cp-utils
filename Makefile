all: create_installation_dir copy_to_installation_dir add_permissions
create_installation_dir:
	sudo mkdir /opt/cp-utils
	@echo "Created installation directory at /opt/cp-utils"
copy_to_installation_dir: create_installation_dir
	sudo cp -r ./problem-files /opt/cp-utils/problem-files
	sudo cp -r ./debugger /opt/cp-utils/debugger
	sudo cp -r ./bin /opt/cp-utils/bin
	@echo "Installed files"
add_permissions: copy_to_installation_dir
	sudo chmod +x /opt/cp-utils/bin/*
	@echo "Added executable permissions"
uninstall:
	sudo rm -rf /opt/cp-utils
	@echo "Removed cp-utils"
	
