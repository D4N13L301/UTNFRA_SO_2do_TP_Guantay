#!/bin/bash

cd
cd UTN-FRA_SO_Examenes/202406/docker/

cat << 'EOF' > index.html
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Daniel Guantay </h3>
<h3> División: 116</h3>
</div>
EOF

cat << 'EOF' > Dockerfile
FROM nginx
COPY . /usr/share/nginx/html
EOF

sudo fdisk /dev/sdd <<EOF
n
p
2


t
2
8e
w
EOF

sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo systemctl restart docker

docker build -t d4n13l301/web1-guantay:latest .
docker push d4n13l301/web1-guantay:latest
docker run -d -p 8080:80 d4n13l301/web1-guantay
docker ps
curl localhost:8080

echo "docker run -d -p 8080:80 d4n13l301/web1-guantay" > run.sh
chmod +x run.sh
