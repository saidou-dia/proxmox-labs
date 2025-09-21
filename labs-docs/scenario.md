# Proxmox Labs - Workflow et automatisation

Ce document illustre mes compétences en administration Proxmox, automatisation avec PDSH et Ansible, et gestion SSH/Git.  
Les captures présentées montrent **des preuves concrètes d’exécution et résultats**, sans divulguer de fichiers sensibles.

---

## 1. Vérification de l’espace disque avec PDSH

Le script `df_uptime_check.sh` permet de vérifier l’espace disque sur tous les nœuds Proxmox simultanément.

**Exemple de sortie :**

<img width="776" height="893" alt="image" src="https://github.com/user-attachments/assets/34954f26-2b43-4aee-ab32-259bfeebfedd" />



> Chaque nœud affiche son `df -h` de manière simultanée grâce à PDSH.  
> Les fichiers sensibles comme `.pdsh_hosts` ne sont jamais versionnés.

---

## 2. Vérification de l’uptime des nœuds

Grâce à PDSH, on peut vérifier rapidement la disponibilité de tous les nœuds.

**Exemple de sortie :**

![Uptime PDSH](screenshots/pdsh_uptime.png)

> On voit que tous les nœuds sont accessibles et opérationnels.  
> Utilisation de l’option `-R ssh -l sdia` pour se connecter avec l’utilisateur administrateur.

---

## 3. Automatisation avec Ansible

Le playbook `update.yml` met à jour tous les paquets sur les nœuds Proxmox.

**Exemple de sortie après exécution :**

![Mise à jour Ansible](screenshots/ansible_update.png)

> Chaque tâche s’exécute avec succès (`ok` ou `changed`) sur tous les nœuds.  
> L’inventaire `hosts.ini` et les playbooks sont versionnés, tandis que les secrets restent locaux.

---

## 4. Connexion SSH et gestion Git

Pour automatiser les accès SSH et le workflow Git :  

- Clés SSH générées avec `ssh-keygen`  
- Ajout des clés sur les nœuds Proxmox et GitHub  
- Remote Git configuré en SSH pour pousser sans mot de passe  

**Exemple de sortie SSH et Git :**

![SSH & Git](screenshots/ssh_git.png)

> Cela prouve la maîtrise de la configuration sécurisée et de la collaboration Git.

---

## 5. Structure du projet pour portfolio

