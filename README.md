# Configuração do Zsh e Git para Desenvolvedores Flutter

![Flutter Logo](https://flutter.dev/images/flutter-logo-sharing.png)

## Visão geral

Este documento descreve os scripts que automatizam a configuração do [Zsh](https://www.zsh.org/), um poderoso shell alternativo para Linux, e do Git, com algumas customizações específicas para desenvolvedores Flutter. A configuração do Zsh inclui a instalação do [Oh My Zsh](https://ohmyz.sh/), um framework de gerenciamento de configuração Zsh, o [Spaceship Prompt](https://github.com/denysdovhan/spaceship-prompt), um prompt minimalista, poderoso e extremamente personalizável, e vários plugins para aumentar a produtividade do desenvolvedor. A configuração do Git inclui a definição de atalhos de comandos comuns e a configuração do VS Code como o editor padrão.

## Como funciona

### Script de Configuração do Zsh (shell.sh)

1. **Atualização de pacotes**: O script começa atualizando todos os pacotes existentes no sistema com o comando `sudo apt-get update && sudo apt-get upgrade -y`.

2. **Instalação do Zsh**: O Zsh é um shell projetado para uso interativo e script, com muitos recursos que não estão presentes em outros shells. Ele é instalado com o comando `sudo apt-get install zsh -y`.

3. **Definindo Zsh como shell padrão**: O script configura o Zsh como o shell padrão do usuário com o comando `chsh -s $(which zsh)`.

4. **Instalação do Oh My Zsh**: Oh My Zsh é um framework de gerenciamento de configuração Zsh de código aberto. Ele é instalado com o comando `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`.

5. **Instalação do Spaceship Prompt**: O Spaceship Prompt é um prompt Zsh minimalista, poderoso e extremamente personalizável que torna o seu terminal mais amigável. Ele é instalado com o comando `git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"`.

6. **Instalação do ZInit**: [ZInit](https://github.com/zdharma/zinit) é uma ferramenta flexível para gerenciar plugins Zsh. Ele é instalado com o comando `sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"`.

7. **Adição de plugins ao .zshrc**: O script adiciona vários plugins ao arquivo .zshrc, que oferecem recursos úteis, como auto-sugestões e realce de sintaxe.

8. **Configuração do Spaceship Prompt**: O script configura o Spaceship Prompt para se adequar às preferências do usuário, adicionando linhas de configuração ao arquivo .zshrc.

9. **Conclusão**: O script imprime uma mensagem informando que a configuração do Zsh foi concluída.

### Script de Configuração do Git (git.sh)

1. **Atualização de pacotes**: O script começa atualizando todos os pacotes existentes no sistema com o comando `sudo apt-get update && sudo apt-get upgrade -y`.

2. **Instalação do Git**: O Git é um sistema de controle de versão distribuído que permite o rastreamento de alterações no código-fonte durante o desenvolvimento de software. Ele é instalado com o comando `sudo apt-get install git -y`.

3. **Configuração do Git**: O script configura o Git para usar o VS Code como editor padrão com o comando `git config --global core.editor "code --wait"`.

4. **Criação de aliases para comandos comuns do Git**: O script adiciona aliases (atalhos) para comandos comuns do Git ao arquivo ~/.gitconfig. Esses aliases simplificam o uso do Git no terminal.

5. **Conclusão**: O script imprime uma mensagem informando que a configuração do Git foi concluída.

### Script de Execução (run.sh)

Este script oferece ao usuário a opção de executar um ou ambos os scripts de configuração descritos acima.

## Como rodar os scripts

Você pode rodar os scripts de configuração do Zsh e do Git com os seguintes passos:

1. Salve os scripts em um diretório em seu computador. Você pode nomeá-los como `shell.sh`, `git.sh` e `run.sh`.

2. Abra um terminal.

3. Navegue até o diretório onde você salvou os scripts usando o comando `cd`. Por exemplo, se você salvou os scripts na sua pasta de Documentos, você usaria o comando `cd ~/Documents`.

4. Torne os scripts executáveis com o comando `chmod +x shell.sh git.sh run.sh`.

5. Execute o script `run.sh` com o comando `./run.sh`. Ele oferecerá opções para executar os scripts `shell.sh` e `git.sh`.

## Vantagens sobre o shell padrão

O Zsh oferece várias vantagens em relação ao Bash, o shell padrão na maioria das distribuições Linux:

- **Auto-sugestões**: O Zsh pode sugerir comandos à medida que você digita, com base no seu histórico de comandos.

- **Realce de sintaxe**: Com o realce de sintaxe, os comandos que você digita no terminal são coloridos de acordo com a sua função, tornando o código mais fácil de ler e de detectar erros.

- **Auto-completar**: Zsh tem um recurso de auto-completar mais avançado que permite completar o nome dos comandos, opções de comando, nomes de arquivo, etc.

- **Melhor navegação no

 histórico**: O Zsh permite pesquisar o histórico de comandos de maneira mais eficiente e intuitiva.

## Exemplos de Uso dos Alias Criados em `git.sh`

Os seguintes atalhos, ou aliases, foram definidos para o Git:

- `git c`: Este comando faz um `git add --all` seguido de `git commit -m`. Use-o quando quiser adicionar todas as alterações no diretório atual e fazer um commit com uma mensagem. Por exemplo:

    ```bash
    git c "Sua mensagem de commit aqui"
    ```

- `git s`: Este comando executa `git status -s`, que mostra o status do Git em formato curto. Use-o para verificar rapidamente quais arquivos foram modificados ou estão sendo rastreados pelo Git.

    ```bash
    git s
    ```

- `git l`: Este comando exibe o log do Git em um formato personalizado. Use-o para ver um histórico de commits detalhado.

    ```bash
    git l
    ```

- `git t`: Este comando cria uma nova tag. Use-o quando quiser marcar um ponto específico no histórico do seu repositório. Por exemplo, para criar uma tag chamada `v1.0`, você usaria:

    ```bash
    git t v1.0
    ```

- `git amend`: Este comando faz um `git add --all` seguido de `git commit --amend --no-edit`. Use-o quando quiser adicionar as alterações mais recentes ao último commit, sem alterar a mensagem do commit.

    ```bash
    git amend
    ```

- `git count`: Este comando executa `git shortlog -s --grep`. Use-o quando quiser contar quantos commits foram feitos que correspondem a uma determinada string. Por exemplo, para contar quantos commits foram feitos que mencionam 'bugfix', você usaria:

    ```bash
    git count bugfix
    ```

Esses atalhos devem ajudar a agilizar seu fluxo de trabalho no Git, permitindo que você execute tarefas comuns com comandos mais curtos.