#!/bin/bash

# Déploiement des fichiers YAML avec kubectl apply
kubectl apply -f prometheus.yml
kubectl apply -f redis.yml
kubectl apply -f redis-node.yml
kubectl apply -f redis-react.yml
kubectl apply -f grafana.yml
kubectl rollout restart deployment grafana-deployment

echo "Déploiement effectué avec succès."

# Note: Le script continue d'exécuter le port forwarding en arrière-plan.
# Utilisez 'fg' pour ramener le processus en avant-plan et puis Ctrl+C pour l'arrêter,
# ou trouvez le processus avec 'ps' et utilisez 'kill' pour l'arrêter.
