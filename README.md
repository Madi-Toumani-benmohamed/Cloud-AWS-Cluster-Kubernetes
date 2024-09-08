# Déploiement automatisé d'un cluster Kubernetes sur AWS

Ce projet vise à automatiser le déploiement d'un cluster Kubernetes sur AWS, qui hébergera une application web. Il utilise Terraform pour provisionner l'infrastructure nécessaire sur AWS.
Prérequis

Avant de commencer, assurez-vous de disposer des éléments suivants :

    Une souscription AWS avec des clés d'accès API configurées.
    Terraform installé localement. Vous pouvez trouver des instructions d'installation [ici](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
    Une configuration AWS dans Terraform. Vous pouvez configurer votre configuration AWS en suivant les instructions [ici]([url](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)).

# Accès au cluster Kubernetes

Une fois le déploiement terminé, vous pouvez accéder au cluster Kubernetes en utilisant la commande kubectl. Assurez-vous d'avoir kubectl installé localement et configurez-le pour accéder au cluster. Vous pouvez trouver des instructions sur la configuration de kubectl [ici]([url](https://www.ibm.com/docs/fr/control-desk/7.6.1.x?topic=kubernetes-installing-kubeadm-kubelet-kubectl#:~:text=kubelet %3A composant qui s'exécute,de communiquer avec votre cluster.)).

Pour vérifier que votre cluster fonctionne correctement, vous pouvez exécuter la commande suivante pour afficher les nœuds du cluster :


```shell
kubectl get nodes
```

# Déploiement de l'application web

Vous pouvez maintenant déployer votre application web sur le cluster Kubernetes en modifiant l'image docker téléchargée.

# Nettoyage

Après avoir terminé l'utilisation du cluster, n'oubliez pas de nettoyer les ressources AWS créées en exécutant la commande Terraform suivante :


```shell
terraform destroy
```
