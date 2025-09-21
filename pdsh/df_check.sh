#!/bin/bash
# Script générique pour vérifier df -h sur tous les nœuds Proxmox

# Charger automatiquement les variables si le fichier .env existe
[ -f "$(dirname "$0")/../.env" ] && export $(grep -v '^#' "$(dirname "$0")/../.env" | xargs)

PDSH_USER=${PDSH_USER:-sdia}
PDSH_HOSTS_FILE=${PDSH_HOSTS_FILE:-$HOME/.pdsh_hosts}

echo "=== Vérification espace disque sur tous les nœuds ==="
pdsh -R ssh -l $PDSH_USER -w ^$PDSH_HOSTS_FILE 'echo "===== %h ====="; df -h'

