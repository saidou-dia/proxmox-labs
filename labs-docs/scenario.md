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

![Mise à jour Ansible](screenshots/ansible_update.png)

> Chaque tâche s’exécute avec succès (`ok` ou `changed`) sur tous les nœuds.  
> L’inventaire `hosts.ini` et les playbooks sont versionnés, tandis que les secrets restent locaux.

---

## 3. Connexion SSH et gestion Git

Pour automatiser les accès SSH et le workflow Git :  

- Clés SSH générées avec `ssh-keygen`  
- Ajout des clés sur les nœuds Proxmox et GitHub  
- Remote Git configuré en SSH pour pousser sans mot de passe  

**Exemple de sortie SSH et Git :**

![SSH & Git](screenshots/ssh_git.png)

> Cela prouve la maîtrise de la configuration sécurisée et de la collaboration Git.

---

## 4. Structure du projet pour portfolio

