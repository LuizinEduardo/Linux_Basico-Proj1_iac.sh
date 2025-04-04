# Script de Criação de Estrutura de Usuários, Diretórios e Permissões - Curso Linux Basico
echo "Script de Criação de Estrutura de Usuários, Diretórios e Permissões"

# Criar diretorios:   PUBLICO ADM VEND SEC

echo "Criando diretorios...."

mkdir PUBLICO
mkdir ADM
mkdir VEND
mkdir SEC
echo "..........................................."


# Criar grupos:       GRP_ADM GRP_VEND GRP_SEC
echo "Criando Grupos....."

groupadd GRP_ADM
groupadd GRP_VEND
groupadd GRP_SEC
echo "..........................................."

# Criar usuarios:     Carlos Maria Joao / Debora Sebastiana Roberto / Josefina Amanda Rogerio
echo "Criando Usuarios....."

useradd carlos -m -c "Carlos"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_ADM
useradd maria -m -c "Maria"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_ADM
useradd joao -m -c "Joao"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_ADM
useradd debora -m -c "Debora"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_VEND
useradd sebastiana -m -c "Sebastiana"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_VEND
useradd roberto -m -c "Roberto"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_VEND
useradd josefina -m -c "Josefina"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio"  -s /bin/bash -p $(openssl password -6  Senha123) -G GRP_SEC
echo "..........................................."

# Dar permicao a todos  para publico e os demais resticoes de acordo com os respectivos setores.
echo "Dando permisao as pastas"
chmod 777 /PUBLICO
chmod 770 /ADM
chmod 770 /VEND
chmod 770 /SEC
echo "....................FIM......................."
