
# Executar como root ou sudo

# Administradores
groupadd Administradores
useradd -m -s /bin/bash -g Administradores admin
passwd admin        # definir senha manualmente
mkdir -p /home/admin/trabalho
chown admin:Administradores /home/admin/trabalho
chmod 777 /home/admin/trabalho

# Administrativo
groupadd Administrativo
useradd -m -s /bin/bash -g Administrativo usuario1
passwd usuario1
mkdir -p /home/usuario1/trabalho
chown usuario1:Administrativo /home/usuario1/trabalho
chmod 750 /home/usuario1/trabalho

# Convidados
groupadd Convidados
useradd -m -s /bin/bash -g Convidados convidado
passwd convidado
mkdir -p /home/convidado/trabalho
chown convidado:Convidados /home/convidado/trabalho
chmod 700 /home/convidado/trabalho

echo "Todos os grupos, usuários e diretórios foram criados com sucesso!"
