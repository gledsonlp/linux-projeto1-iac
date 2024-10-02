#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

SHELL="/bin/bash"
SENHA="$(openssl passwd -6 Senha123)"

useradd carlos -m -s ${SHELL} -p "${SENHA}" -G GRP_ADM
useradd maria -m -s ${SHELL} -p "${SENHA}" -G GRP_ADM
useradd joao -m -s ${SHELL} -p "${SENHA}" -G GRP_ADM

useradd debora -m -s ${SHELL} -p "${SENHA}" -G GRP_VEN
useradd sebastiana -m -s ${SHELL} -p "${SENHA}" -G GRP_VEN
useradd roberto -m -s ${SHELL} -p "${SENHA}" -G GRP_VEN

useradd josefina -m -s ${SHELL} -p "${SENHA}" -G GRP_SEC
useradd amanda -m -s ${SHELL} -p "${SENHA}" -G GRP_SEC
useradd rogerio -m -s ${SHELL} -p "${SENHA}" -G GRP_SEC

echo "Especificando permissôes dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script finalizado!"
