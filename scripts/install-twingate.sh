#!/bin/bash
#
# install-twingate.sh: Installs the Twingate Connector.
#

set -e

curl -fsSL "https://binaries.twingate.com/connector/setup.sh" | sudo bash

echo "Twingate Connector installation complete."
