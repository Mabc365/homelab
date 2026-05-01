#!/bin/bash
#
# update-all.sh: Updates the system and all services.
#

set -e

# Update apt packages
sudo apt-get update && sudo apt-get upgrade -y

# Update ansible repo and run ansible-pull
cd /opt/homelab && sudo git pull && ansible-pull -U https://github.com/Mabc365/homelab.git

# Update docker-compose services
for d in /opt/homelab/compose/*/ ; do
    (cd "$d" && docker-compose pull && docker-compose up -d)
done

echo "Update complete."
