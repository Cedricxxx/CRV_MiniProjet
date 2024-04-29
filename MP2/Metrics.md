# Métriques Grafana

Ce document présente deux métriques clés pour la surveillance et la gestion de vos services Redis et Node.js.

## 1. redis_connected_client

### Description
Cette métrique surveille le nombre de clients actuellement connectés à votre serveur Redis. Elle fournit une vue d'ensemble de l'utilisation de votre serveur Redis en temps réel et peut aider à identifier les tendances d'utilisation ou les pics inattendus dans la charge des connexions.

### Utilisation
La métrique `redis_connected_client` peut être utilisée pour :

- **Détecter les pics de charge:** Un nombre élevé de clients connectés peut indiquer une augmentation de la charge ou une demande accrue pour les services Redis.
- **Surveiller les tendances:** Les fluctuations dans le nombre de clients connectés peuvent révéler des tendances d'utilisation à long terme.
- **Diagnostiquer les problèmes:** Une augmentation ou une diminution soudaine du nombre de clients connectés peut signaler des problèmes de réseau ou de performance qui nécessitent une attention immédiate.

## 2. nodeds_heap_size_used_bytes

### Description
Cette métrique surveille la quantité de mémoire heap utilisée par votre application Node.js. Elle donne un aperçu de la consommation de mémoire en temps réel, ce qui est essentiel pour maintenir la performance et la stabilité de votre application.

### Utilisation
La métrique `nodeds_heap_size_used_bytes` peut être utilisée pour :

- **Surveiller la mémoire:** Vous aider à comprendre comment votre application Node.js utilise la mémoire au fil du temps.
- **Prévenir les fuites de mémoire:** Un accroissement progressif de la mémoire heap utilisée peut indiquer une fuite de mémoire ou un autre problème de performance.
- **Optimiser les performances:** En surveillant cette métrique, vous pouvez identifier les opportunités d'optimisation pour réduire la consommation de mémoire et améliorer la réactivité de l'application.

