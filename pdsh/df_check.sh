#!/bin/bash
# Script générique pour vérifier df -h sur tous les nœuds Proxmox

# Variables locales
PDSH_USER="<UTILISATEUR>"
PDSH_HOSTS_FILE="<CHEMIN_FICHIER_HOSTS>"

echo "=== Vérification espace disque sur tous les nœuds ==="
pdsh -R ssh -l $PDSH_USER -w ^$PDSH_HOSTS_FILE 'echo "===== %h ====="; df -h'
