#!/bin/bash

echo "Diretórios"

mkdir/ public
mkdir/ adm
mkdir/ ven
mkdir/ seg

echo "Grupos de usuários"

groupadd GRP_ADM
grouapp GRP_VEN
groupadd GRP_SEG

echo "Criando usuários e adicionando aos grupos"

useradd userAdm01 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_ADM
useradd userAdm02 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_ADM
useradd userAdm03 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_ADM

useradd userVen01 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_VEN
useradd userVen02 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_VEN
useradd userVen03 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_VEN

useradd userSeg01 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_SEG
useradd userSeg02 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_SEG
useradd userSeg03 -m -s /bin/bash -p $(openss1 passwd -crypt Senha1234) -G GRP_SEG

echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_SALES /ven
chown root:GRP_CYSEC /seg

chmod 777/publica
chmod 770/adm
chmod 770/ven
chmod 770/seg

echo "Feito"
