#!/bin/bash

sudo apt install ansible -y

ansible-galaxy install andrewrothstein.kops
ansible-galaxy install kostyrev.direnv

cp -r $PWD/ildar.software /home/$USER/.ansible/roles

ansible-playbook software.yml

echo -n "Нужно удалить предустановленные роли (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    
	ansible-galaxy remove andrewrothstein.kops
	ansible-galaxy remove kostyrev.direnv
	ansible-galaxy remove ildar.software
	echo "Installation complete."
else
    echo "Ok, leave them for you. Installation complete."
fi
