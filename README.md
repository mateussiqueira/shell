# Configuração do Zsh para Desenvolvedores Flutter

![Flutter Logo](https://flutter.dev/images/flutter-logo-sharing.png)

## Visão geral

Este documento descreve um script que automatiza a configuração do [Zsh](https://www.zsh.org/), um poderoso shell alternativo para Linux, com algumas customizações específicas para desenvolvedores Flutter. A configuração inclui a instalação do [Oh My Zsh](https://ohmyz.sh/), um framework de gerenciamento de configuração Zsh, o [Spaceship Prompt](https://github.com/denysdovhan/spaceship-prompt), um prompt minimalista, poderoso e extremamente personalizável, e vários plugins para aumentar a produtividade do desenvolvedor.

Além disso, há um script separado chamado `git.sh` que configura vários atalhos úteis para comandos Git.

## Como funciona

1. **Atualização de pacotes**: O script começa atualizando todos os pacotes existentes no sistema com o comando `sudo apt-get update && sudo apt-get upgrade -y`.

2. **Instalação do Zsh**: O Zsh é um shell projetado para uso interativo e script, com muitos recursos que não estão presentes em outros shells. Ele é instalado com o comando `sudo apt-get install zsh -y`.

3. **Definindo Zsh como shell padrão**: O script configura o Zsh como o shell padrão do usuário com o comando `chsh -s $(which zsh)`.

4. **Instalação do Oh My Zsh**: Oh My Zsh é um framework de gerenciamento de configuração Zsh de código aberto. Ele é instalado com o comando `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`.

5. **Instalação do Spaceship Prompt**: O Spaceship Prompt é um prompt Zsh minimalista, poderoso e extremamente personalizável que torna o seu terminal mais amigável. Ele é instalado com o comando `git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"`.

6. **Instalação do ZInit**: [ZInit](https://github.com/zdharma/zinit) é uma ferramenta flexível para gerenciar plugins Zsh. Ele é instalado com o comando `sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"`.

7. **Adição de plugins ao .zshrc**: O script adiciona vários plugins ao arquivo .zshrc, que oferecem recursos úteis, como auto-sugestões e realce de sintaxe.

8. **Configuração do Spaceship Prompt**: O script configura o Spaceship Prompt para se adequar às preferências do usuário, adicionando linhas de configuração ao arquivo .zshrc.

9. **Conclusão**: O script imprime uma mensagem informando que a configuração do Zsh foi concluída.

O `git.sh` define vários aliases para comandos Git, tornando-os mais rápidos e fáceis de digitar. Além disso, ele configura o VS Code como o editor padrão do Git.

## Como rodar o script

Você pode rodar o script de configuração do Zsh com os seguintes passos:

1. Salve o script em um arquivo em seu computador. Por exemplo, você pode nomeá-lo como `setup_zsh.sh`.

2. Abra um terminal.

3. Navegue até o diretório onde você salvou o script usando o comando `cd`. Por exemplo, se você salvou o script na sua pasta de Documentos, você usaria o comando `cd ~/Documents`.

4. Torne o script executável com o comando `chmod +x setup_zsh.sh`.

5. Execute o script com o comando `./setup_zsh.sh`.

O script irá agora executar, instalando o Zsh, o Oh My Zsh, o Spaceship Prompt e os plugins selecionados, além de configurar o Zsh como o seu shell padrão.

Para rodar o script `git.sh`, siga os mesmos passos, substituindo `setup_zsh.sh` por `git.sh`.

## Vantagens sobre o shell padrão

O Zsh oferece várias vantagens em relação ao Bash, o shell padrão na maioria das distribuições Linux:

- **Auto-sugestões**: O Zsh pode sugerir comandos à medida que você digita, com base no seu histórico de comandos.

- **Realce de sintaxe**: Com o realce de sintaxe, os comandos que você digita no terminal são coloridos de acordo com a sua função, tornando o código mais fácil de ler e de detectar erros.

- **Auto-completar**: Zsh tem um recurso de auto-completar mais avançado que permite completar o nome dos comandos, opções de comando, nomes de arquivo, etc.

- **Melhor navegação no histórico**: O Zsh permite navegar no histórico de comandos de maneiras mais avançadas e intuitivas em comparação com o Bash.

- **Plugins e temas**: Com Oh My Zsh, você pode personalizar a aparência e a funcionalidade do seu shell com uma ampla variedade de temas e plugins.

Os desenvolvedores de Flutter se beneficiarão da eficiência e da personalização que o Zsh oferece. A capacidade de completar comandos, junto com sugestões automáticas e plugins adicionais, faz com que seja mais fácil e rápido executar comandos Flutter e Dart. 

A aparência do terminal também é importante

 para desenvolvedores que passam muito tempo trabalhando nele, e o Spaceship Prompt fornece uma estética agradável e uma abundância de informações úteis direto no prompt.

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