#!/bin/bash

# Atualizar os pacotes existentes
sudo apt-get update -y
sudo apt-get upgrade -y

# Instalar Zsh
sudo apt-get install -y zsh

# Definir Zsh como shell padrão
chsh -s $(which zsh)

# Instalar Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instalar Spaceship Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Alterar o tema para spaceship
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/g' ~/.zshrc

# Instalar ZInit para gerenciar plugins
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# Adicionar plugins ao .zshrc
echo "zinit light zdharma/fast-syntax-highlighting" >> ~/.zshrc
echo "zinit light zsh-users/zsh-autosuggestions" >> ~/.zshrc
echo "zinit light zsh-users/zsh-completions" >> ~/.zshrc

# Configurar Spaceship Prompt
echo '
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "' >> ~/.zshrc

# Fim do script
echo 'Configuração do ZSH concluída.'
