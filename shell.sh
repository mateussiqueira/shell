#!/bin/bash

# Verificar se o Homebrew está instalado e instalá-lo se não estiver
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Atualizar todos os pacotes existentes
brew update && brew upgrade

# Instalar Zsh
brew install zsh

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

# Verificar o caminho do VS Code
vscode_path=$(which code)

# Verificar se o comando 'which' encontrou o VS Code
if [ -z "$vscode_path" ]; then
    echo "VS Code não foi encontrado. Por favor, verifique se está instalado e disponível no PATH."
else
    # Adicionar o alias ao .zshrc
    echo "alias code=\"$vscode_path\"" >> ~/.zshrc

    # Recarregar o .zshrc
    source ~/.zshrc

    echo "Alias 'code' adicionado com sucesso ao seu .zshrc"
fi

# Fim do script
echo 'Configuração do ZSH concluída.'
