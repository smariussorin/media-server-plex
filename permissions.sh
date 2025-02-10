ROOT_PATH="/opt/path"

echo 'Adding secrets permissions'
sudo chmod 775 $ROOT_PATH
sudo setfacl -Rdm g:docker:rwx $ROOT_PATH
sudo setfacl -Rm g:docker:rwx $ROOT_PATH

echo 'Adding .env permissions'
sudo chown root:root .env
sudo chmod 600 .env

echo 'Adding secrets folder'
sudo mkdir -p secrets
sudo chown root:root secrets
sudo chmod 600 secrets

echo 'Adding appdata folder'
sudo mkdir -p appdata