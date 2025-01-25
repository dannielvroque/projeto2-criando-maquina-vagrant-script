# projeto2-criando-maquina-vagrant-script
Criando uma maquina virtual pelo vagrant + shell script

## Tecnologias Utilizadas
- **Linguagem/Framework**: Ruby (usado pelo Vagrant para configuração)
- **VirtualBox** (ou VMWare): Software de virtualização para executar a máquina virtual.

## Como Usar
1. Clone o repositório:

   ```bash
   git clone https://github.com/dannielvroque/projeto2-criando-maquina-vagrant-script.git

2. Construindo a VM

   Se nao tiver, criar o diretorio "provision.sh" na raiz do projeto e adicionar os comandos para instalacao dos pacotes
   
   ```bash
   vim provision.sh

   # Install software packages
   sudo apt-get install vim -y
   sudo apt-get install curl -y
   sudo apt-get install telnet -y
   sudo apt-get install unzip -y
   sudo apt-get install wget -y
   sudo apt-get install net-tools -y
   sudo apt-get install htop -y
   sudo apt-get install nmap -y

3. Executando a VM
   
   Dentro do Projeto, executar o comando abaixo, Este comando ira efetuar o download da imagem ubuntu, e criar a VM 
   
   ```bash
   vagrant up

4. Testando a VM

   Ao finalizar a configuracao da VM apos o vagrant up, ela estara disponivel para uso atraves do comando abaixo:

   Este comando efetuara a conexao SSH com a VM criada

   ```bash
   vagrant ssh

5. Verificando a instalacao dos pacotes

   Ao conectar na VM criada, usando o comando acima, pode ser efetuada a validacao dos pacotes instalados, um a um, conforme necessidade

   ```bash
   # Verify versions
   echo "Verifying installed versions..."
   vim --version | head -n 1
   curl --version | head -n 1
   telnet --version 2>/dev/null || echo "Telnet doesn't have a built-in version flag."
   unzip -v | head -n 1
   wget --version | head -n 1
   ifconfig --version 2>/dev/null || echo "Net-tools doesn't show version with this command."
   htop --version | head -n 1
   nmap --version | head -n 1 
   ```
6. Criando um novo usuario
   
   Esta etapa funciona no momento do vagrant up, o terminal ira solicitar o nome do usuario a ser criado.

6. Verificando a criacao do usuario
 
   Conectar via ssh, usando "vagrant ssh" e depois efetuar o comando abaixo:

   ```bash
   su - USUARIO
   ```