#!/bin/bash

echo "Criando estrutura"

mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec

echo "Criando grupos e usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash -G GRP_ADM


useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN


useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Proccesso finalizado"
