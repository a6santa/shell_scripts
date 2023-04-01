#!/bin/bash

add_user(){
    USER=$1
    PWD=$2
    GROUP=$3 

    echo useradd -d /home/$USER -g $group -p $PWD $USER 
}

dirs=("public" "adm" "ven" "sec")
groups=("GRP_ADM" "GRP_VEN" "GRP_SEC")

# CRIANDO DIRETORIOS
for dir in ${dirs[@]}; do 
    mkdir /$dir
done

# CRIANDO GRUPOS 
for group in ${groups[@]}; do 
    groupadd $group
done


# CRIANDO OS USUÁRIOS E ADD AOS GRUPOS
add_user carlos 123BATATA GRP_ADM
add_user maria 123BATATA GRP_ADM
add_user joao 123BATATA GRP_ADM

add_user debora 123BATATA GRP_VEN
add_user sebastiana 123BATATA GRP_VEN
add_user roberto 123BATATA GRP_VEN

add_user josefina 123BATATA GRP_SEC
add_user amanda 123BATATA GRP_SEC
add_user rogerio 123BATATA GRP_SEC

## ALTERANDO GRUPO DONO DIRETORIO E PERMISSÕES
 chgrp GRP_ADM /adm
 chgrp GRP_VEN /ven
 chgrp GRP_SEC /sec

 chmod 777 /public
 chmod 770 /adm
 chmod 770 /ven
 chmod 770 /sec