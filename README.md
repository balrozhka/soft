HOW TO INSTALL

**EASY WAY**
```
git clone https://github.com/balrozhka/soft

cd soft

./install.sh
```

**LONG WAY**
```
apt install ansible -y

git clone https://github.com/balrozhka/soft

cd soft
ansible-galaxy install andrewrothstein.kops
ansible-galaxy install kostyrev.direnv

cp -r ildar.software/ ~/.ansible/roles

ansible-playbook software.yml
```

**EXAMPLE PLAYBOOK**
```
---
- name: Installation soft on PC
  hosts: localhost

  roles:
    - ildar.software
    - kostyrev.direnv
    - andrewrothstein.kops

```
