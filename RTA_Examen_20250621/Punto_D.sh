#!/bin/bash

cd
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/

cat > main.yml <<EOF
---
# tasks file for 2do_parcial

- debug:
    msg: "Tareas del 2do Parcial"

- name: "Crear directorios en /tmp/multi_Pruebas_borrame/"
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    recurse: yes
  with_items:
    - "alumno"
    - "equipo"

- name: "Agrego archivo desde template"
  template:
    src: alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt

- name: "Agrego archivo desde template"
  template:
    src: equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt

- name: "add NOPASSWD in sudores for group {{ GROUP_ADMIN }}"
  become: yes
  lineinfile:
    path: /etc/sudoers
    state: present
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'
EOF

cd ..
mkdir -p templates
cd templates

cat > alumno.j2 <<EOF
Nombre: Daniel Apellido: Guantay
Division: 116
EOF

cat > equipo.j2 <<EOF
IP: {{ ansible_default_ipv4.address }}
Nombre Distribucion= {{ ansible_facts.distribution }}
Cantidad de cores: {{ ansible_facts.processor_cores }}
EOF

cd
cd UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i inventory/hosts playbook.yml
