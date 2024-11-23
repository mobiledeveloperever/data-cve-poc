#!/bin/bash

# Définition des codes de couleur ANSI pour le texte
colors=(
    '\[\e[0;30m\]' # Noir
    '\[\e[0;31m\]' # Rouge
    '\[\e[0;32m\]' # Vert
    '\[\e[0;33m\]' # Jaune
    '\[\e[0;34m\]' # Bleu
    '\[\e[0;35m\]' # Magenta
    '\[\e[0;36m\]' # Cyan
    '\[\e[0;37m\]' # Blanc
)

# Sélection aléatoire d'une couleur
RANDOM_COLOR=${colors[$RANDOM % ${#colors[@]}]}

# Définition du prompt avec la couleur aléatoire
NEW_PS1="${RANDOM_COLOR}\u@\h:\w\$ \[\e[0m\]"

# Ajout de la nouvelle définition du prompt dans le fichier .bashrc
echo "" >> /home/.bashrc
echo "# Définition du prompt avec une couleur aléatoire" >> /home/.bashrc
echo "export PS1='${NEW_PS1}'" >> /home/.bashrc

# Rechargement de la configuration du terminal
source /home/.bashrc
