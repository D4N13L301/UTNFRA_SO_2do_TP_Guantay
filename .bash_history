sudo apt update
ls -la
sudo apt install git
git --version
shh-key
ssh-key
ssh-keygen
ls -la
cd .shh
ls -la
cd .ssh/
ls -la
cat id_rsa.pub 
cd ..
ls -la
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git 
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc 
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo fdisk -l
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgcreate vg_temp /dev/sdc2
sudo lvcreate -L 5MB vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas
sudo vgs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo cd /var/lib/docker/
ls -la
cd /var/
ls
cd lib/
ls
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
df -h
cd /
ls
sudo mkdir work
sudo mount /dev/mapper/vg_datos-lv_workareas work/
df -h
free -h
sudo systemctl restart docker
sudo systemctl status docker
cd /usr/local/bin/
sudo vim GuantayAltaUser-Groups.sh
ls
ls -la
cd
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406/
ls -la
cd bash_script/
ls -la
cat Lista_Usuarios.txt
cd /usr/local/bin/
ls
sudo vim GuantayAltaUser-Groups.sh
ls -la
sudo chmod +x GuantayAltaUser-Groups.sh
ls -la
cd
cd /usr/local/bin/
ls -la
cp GuantayAltaUser-Groups.sh RTA_Examen_20250621/
sudo cp GuantayAltaUser-Groups.sh RTA_Examen_20250621/
cp GuantayAltaUser-Groups.sh UTN-FRA_SO_Examenes/RTA_Examen_20250621/
sudo cp GuantayAltaUser-Groups.sh UTN-FRA_SO_Examenes/RTA_Examen_20250621/
cp GuantayAltaUser-Groups.sh /home/daniel/UTN-FRA_SO_Examenes/RTA_Examen_20250621/
sudo cp GuantayAltaUser-Groups.sh /home/daniel/UTN-FRA_SO_Examenes/RTA_Examen_20250621/
sudo cp /usr/local/bin/GuantayAltaUser-Groups.sh \ /home/daniel/UTN-FRA_SO_Examenes/RTA_Examen_20250621/
cd
ls -la
sudo cp /usr/local/bin/GuantayAltaUser-Groups.sh          /home/daniel/UTN-FRA_SO_Examenes/RTA_Examen_20250621/
sudo cp /usr/local/bin/GuantayAltaUser-Groups.sh          /home/daniel/RTA_Examen_20250621/
ls -la
cd RTA_Examen_20250621/
ls -la
cd
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406/
ls -la
cd docker/
ls -la
cat index.html
sudo vim index.html 
sudo vim dockerfile
docker build -t d4n13l301/web1-Guantay:latest .
sudo docker build -t d4n13l301/web1-Guantay:latest .
sudo docker build -t d4n13l301/web1-guantay:latest .
ls -la
cat dockerfile 
sudo vim dockerfile 
sudo docker build -t d4n13l301/web1-guantay:latest .
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo systemctl restart docker
sudo docker build -t d4n13l301/web1-guantay:latest .
docker login -u d4n13l301
docker push
docker push d4n13l301/web1-guantay:latest
sudo docker push d4n13l301/web1-guantay:latest
docker push d4n13l301/web1-guantay:latest
sudo docker push d4n13l301/web1-guantay:latest
sudo systemctl status docker
sudo systemctl restart docker
sudo systemctl status docker
sudo docker push d4n13l301/web1-guantay:tp2
sudo docker push d4n13l301/web1-guantay:latest
sudo usermod -aG docker daniel
docker login
sudo docker push d4n13l301/web1-guantay:latest
docker push d4n13l301/web1-guantay:latest
su -vagrant
docker push d4n13l301/web1-guantay:latest
docker -d -p 8080:80 d4n13l301/web1-guantay
docker run -d -p 8080:80 d4n13l301/web1-guantay
dcoker ps
docker ps
curl localhost:8080
docker stop ed424d6e4e76
docker half
tail ~/.bash_history
history -w
tail ~/.bash_history
vagrant halt
sudo docker run -d -p 8080:80 d4n13l301/web1-guantay
docker ps
curl localhost:8080
sudo ufw status
sudo ufw allow 8080/tcp
sudo ufw reload
docker start 0a1a911760e3
docker logs 0a1a911760e3
ip addr show | grep -E 'inet.*(eth1|enp.*)'
docker stop 0a1a911760e3
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406/
ls -la
cd docker/
ls -la
echo "docker run -d -p 8080:80 d4n13l301/web1-guantay" > run.sh
ls -la
sudo chmod +x run.sh
cd ..
ls -la
cd ansible/
ls -la
cd inventory/
ls -la
cat hosts
cd ..
ls
cat playbook.yml 
cd roles/
ls
cd 2do_parcial/
ls
ls -la
cd tasks/
ls -la
cat main.yml 
cd
cd /UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/
ls -la
vim main.yml
cd ..
ll
mkdir templates
ll
cd templates
ll
vim alumno.j2
vim equipo.j2
cd /tmp/
ls
sudo visudo
cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ls
cat playbook.yml 
cd ..
ls
cd
ls -la
cd RTA_Examen_20250621/
ls -la
sudo vim Punto_A.sh
cat Punto_A.sh
sudo chmod +x Punto_A.sh
ls
sudo vim Punto_B.sh
sudo chmod +x Punto_B.sh
ls
sudo visudo
sudo vim Punto_C.sh
sudo chmod +x Punto_C.sh
ls
sudo visudo
sudo chmod 440 /etc/sudoers.d/daniel
ls
cd RTA_Examen_20250621/
ls
cd UTN-FRA_SO_Examenes/202406/ansible/
cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i inventory/hosts playbook.yml
sudo visudo
sudo visudo -f /etc/sudoers.d/90-daniel
sudo chmod 440 /etc/sudoers.d/90-daniel
sudo visudo
ls -la
cd RTA_Examen_20250621/
ls
sudo vim Punto_D.sh
sudo chmod +x Punto_D.sh
ls
cd UTN-FRA_SO_Examenes/202406/
cd
cd UTN-FRA_SO_Examenes/202406/
ls -la
cd
ls -la
git clone https://github.com/D4N13L301/UTNFRA_SO_2do_TP_Guantay.git
ls -la
cd UTNFRA_SO_2do_TP_Guantay/
ls -la
cd
ls -la
cp -a /home/daniel/RTA_Examen_20250621 /UTNFRA_SO_2do_TP_Guantay/
sudo cp -a /home/daniel/RTA_Examen_20250621 /UTNFRA_SO_2do_TP_Guantay/
ls -la
cd UTNFRA_SO_2do_TP_Guantay/
ls -la
sudo cp -a /home/daniel/RTA_Examen_20250621 /UTNFRA_SO_2do_TP_Guantay/
ls -la
cd
ls -la
RTA_Examen_20250621/
cd RTA_Examen_20250621/
ls -la
cd
ls -la
cd UTN-FRA_SO_Examenes/
ls -la
cd 202406/
ls -la
cd
ls -la
cp -r /home/vagrant/RTA_Examen_20250621/ /home/daniel/UTNFRA_SO_2do_TP_Guantay/
sudo cp -r /home/vagrant/RTA_Examen_20250621/ /home/daniel/UTNFRA_SO_2do_TP_Guantay/
sudo cp -r /home/daniel/RTA_Examen_20250621/ /home/daniel/UTNFRA_SO_2do_TP_Guantay/
sudo cp -r /home/daniel/UTN-FRA_SO_Examenes/202406/ /home/daniel/UTNFRA_SO_2do_TP_Guantay/
ls -la
cd UTNFRA_SO_2do_TP_Guantay/
ls -la
cd
ls -la
cp -p /.bash_history /UTNFRA_SO_2do_TP_Guantay/
