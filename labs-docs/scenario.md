# Proxmox Labs - Workflow et automatisation

Ce document illustre mes compétences en administration Proxmox, automatisation avec PDSH et Ansible, et gestion SSH/Git.  
Les captures présentées montrent **des preuves concrètes d’exécution et résultats**, sans divulguer de fichiers sensibles.

---

## 1. Vérification de l’espace disque et de l’uptime avec PDSH

Le script df_uptime_check.sh permet de vérifier simultanément l’espace disque (df -h) et l’uptime sur tous les nœuds Proxmox.

Chaque nœud affiche son utilisation disque et son uptime en même temps grâce à PDSH.

Les fichiers sensibles comme .pdsh_hosts ne sont jamais versionnés et restent locaux.

**Exemple de sortie :**

<img width="777" height="889" alt="image" src="https://github.com/user-attachments/assets/ec82167a-f91c-4597-a9b4-a0230cbf2097" />


## 2. Automatisation avec Ansible

Le playbook `update.yml` met à jour tous les paquets sur les nœuds Proxmox.

**Exemple de sortie après exécution :**

<img width="955" height="548" alt="image" src="https://github.com/user-attachments/assets/02ee52f1-cc14-4488-acfd-54a0efd3641d" />


> Chaque tâche s’exécute avec succès (`ok` ou `changed`) sur tous les nœuds.  

---

## 3. Connexion SSH et gestion Git

Pour automatiser les accès SSH et le workflow Git :  

- **Clés SSH** générées avec `ssh-keygen` pour l’utilisateur `sdia`.
- **Clés publiques copiées sur les nœuds Proxmox** pour permettre la connexion sans mot de passe.
- **Clé SSH ajoutée à GitHub** pour push/pull sans mot de passe.
- **Remote Git configuré en SSH** pour éviter de saisir le mot de passe à chaque push. 

**Exemple de sortie SSH et Git :**

<img width="781" height="125" alt="image" src="https://github.com/user-attachments/assets/ac31f576-3ffc-4f42-afb9-17d3d41e59ba" />


Connexion SSH vers un nœud Proxmox
<img width="911" height="238" alt="image" src="https://github.com/user-attachments/assets/ad438705-67c8-461d-ba19-908021a893b1" />

Connexion SSH vers Github
<img width="924" height="80" alt="image" src="https://github.com/user-attachments/assets/bcccd7bc-6a58-4d3b-bb55-a3f07673f720" />


> Cela prouve la maîtrise de la configuration sécurisée et de la collaboration Git.

---

## 4. Structure du projet pour portfolio

