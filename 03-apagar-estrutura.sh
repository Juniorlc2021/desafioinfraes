#!/bin/bash

echo "Apagando estrutura..."

rmdir /publico

rmdir /adm

rmdir /ven

rmdir /sec

echo "Apagando grupos e usuários..."

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC


userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao

userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto


userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "Processo finalizado..."
