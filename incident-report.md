1. Le déploiement de la version v1.0.0 sur l'environnement Staging a réussi.
2. Le contrôle de santé a confirmé que l'application répond correctement sur le port 8083.
3. La tentative de téléchargement de v0.9.0 a échoué car cette image est introuvable dans GHCR.
4. La version défectueuse n'a donc pas été déployée et aucune panne applicative n'a pu être simulée.
5. La configuration a été restaurée vers v1.0.0 et le contrôle de santé a confirmé le bon fonctionnement de l'application.
