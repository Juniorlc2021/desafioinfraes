#!/bin/bash

echo "Criando estrutura..."

mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

echo "Criando grupos e usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC



useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Souza" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "Joao Santos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM


useradd debora -c "Debora Alves" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN


useradd josefina -c "Josefina Oliveira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Pereira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Ferreira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Proccesso finalizado"



