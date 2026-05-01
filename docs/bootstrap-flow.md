# Bootstrap Flow

This document describes the bootstrap flow, which is used to provision an existing Ubuntu server or to recover a server to a known state.

## Manual Bootstrap

The `bootstrap/bootstrap.sh` script is provided for manual provisioning. This script can be run on any existing Ubuntu server to apply the `homelab` configuration.

### How it Works

1.  **Update and Install Dependencies**: The script first updates the `apt` package cache and installs `git`, `curl`, and `ansible`.
2.  **Clone or Update Repository**: It then clones the `homelab` repository to `/opt/homelab` if it doesn't already exist. If it does exist, it pulls the latest changes from the repository.
3.  **Run Ansible-Pull**: Finally, it runs `ansible-pull` to apply the main `site.yml` playbook. This will configure the server according to the roles and host profiles defined in the repository.

### Usage

To run the bootstrap script, simply execute the following command on your server:

```bash
curl -sSL https://raw.githubusercontent.com/Mabc365/homelab/main/bootstrap/bootstrap.sh | sudo bash
```

This uses the Mabc365/homelab repository.
