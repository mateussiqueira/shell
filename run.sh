#!/bin/bash

echo "Escolha uma opção: "
echo "1. Rodar shell.sh"
echo "2. Rodar git.sh"
echo "3. Rodar ambos"

read -p "Digite o número da sua escolha: " choice

case $choice in
    1)
        echo "Rodando shell.sh..."
        chmod +x shell.sh
        ./shell.sh
        ;;
    2)
        echo "Rodando git.sh..."
        chmod +x git.sh
        ./git.sh
        ;;
    3)
        echo "Rodando shell.sh e git.sh..."
        chmod +x shell.sh
        chmod +x git.sh
        ./shell.sh
        ./git.sh
        ;;
    *)
        echo "Opção inválida. Por favor, escolha 1, 2, ou 3."
        ;;
esac
