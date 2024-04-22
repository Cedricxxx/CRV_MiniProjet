## README

### Prérequis

Avant de commencer, assurez-vous que vous avez minikube ou un environnement équivalent configuré pour procéder aux tests.

### Initialisation

Suivez ces étapes pour préparer votre environnement :

1. **Démarrage de Minikube et Activation du Tunnel**

   Lancez Minikube et activez le tunnel pour permettre la communication :
   ```bash
   minikube start
   minikube tunnel
   ```

2. **Préparation des Scripts**

   Assurez-vous que les scripts bash (`deploy.sh`, `delete.sh`, `grafana.sh`, `prometheus.sh`) ont les permissions nécessaires pour s'exécuter :
   ```bash
   chmod +x <nom_du_fichier>
   ```

### Phase de Tests

Pour déployer et tester les services, procédez comme suit :

1. **Déploiement**

   Exécutez le script `deploy.sh` pour lancer le déploiement :
   ```bash
   ./deploy.sh
   ```

2. **Vérification de l'État des Services**

   Attendez que tous les services soient déployés et fonctionnels.

3. **Ouverture de Prometheus**

   Pour accéder à Prometheus, exécutez :
   ```bash
   ./prometheus.sh
   ```

4. **Accès à Grafana**

   Pour ouvrir l'interface Grafana, lancez :
   ```bash
   ./grafana.sh
   ```
   - **Identifiants** : Utilisez `admin` comme nom d'utilisateur et `HelloWorld` comme mot de passe.
   - **Configuration de la Source de Données** : Dans la barre latérale, allez dans "Data Source". Si Prometheus est correctement connecté, votre déploiement est opérationnel.
   - **Création d'un Tableau de Bord** : Cliquez sur "+" dans la barre latérale pour ajouter un tableau de bord. Testez une fonctionnalité en interagissant avec un service lié à Prometheus (un simple "up" suffit).

5. **Nettoyage**

   Pour terminer et nettoyer l'environnement, exécutez `delete.sh` :
   ```bash
   ./delete.sh
   ```

