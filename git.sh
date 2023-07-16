#!/bin/bash

# Define o comando 'git c' como um atalho para adicionar todas as alterações e comitar com uma mensagem.
git config --global alias.c '!git add --all && git commit -m'

# Define o comando 'git s' como um atalho para ver o status do git de maneira compacta.
git config --global alias.s '!git status -s'

# Define o comando 'git l' para mostrar o log do git em um formato personalizado.
git config --global alias.l "!git log --pretty=format:'%C(blue)%h%C(red)%d %C(white)%s - %C(cyan)%cn, %C(green)%cr'"

# Define o comando 'git t' para criar uma nova tag com uma mensagem.
git config --global alias.t '!sh -c '\''git tag -a $1 -m $1'\'' -'

# Define o comando 'git amend' para adicionar todas as alterações e alterar o último commit sem mudar a mensagem.
git config --global alias.amend '!git add --all && git commit --amend --no-edit'

# Define o comando 'git count' para contar commits por autor que correspondam a uma expressão regular.
git config --global alias.count '!git shortlog -s --grep'

# Configura o git para sempre enviar tags ao fazer push.
git config --global push.followTags true

# Define o Visual Studio Code como editor padrão para o Git.
git config --global core.editor "code --wait"
