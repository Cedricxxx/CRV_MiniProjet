#!/bin/bash

# Commande fixe
command="node fetchData.js writeRead 100000 1000"
# Nombre de fois que la commande doit être exécutée, 1 par défaut
count=${1:-1}

# Vérification de l'entrée pour s'assurer que c'est un nombre valide
if ! [[ $count =~ ^[0-9]+$ ]]; then
    echo "Erreur: Le nombre de fois doit être un entier positif."
    exit 1
fi

# Construction de la commande à exécuter en arrière-plan
cmd_to_run=""
for i in $(seq 1 $count); do
  cmd_to_run+="$command & "
done

# Ajoute des commandes pour attendre la fin de tous les processus en arrière-plan
cmd_to_run+="wait; echo 'Toutes les commandes ont été exécutées simultanément. Appuyez sur entrée pour fermer...'; read -p ''"

# Exécution dans gnome-terminal
gnome-terminal -- /bin/bash -c "$cmd_to_run"

