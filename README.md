# Vault Dockerized

- [Vault Dockerized](#vault-dockerized)
  - [Overview](#overview)
  - [Requirements](#requirements)
  - [Installation](#installation)

---

## Overview

This repository contains a template to deploy HashiCorp's [Vault](https://www.vaultproject.io/) using [Docker Compose](https://docs.docker.com/compose/) on a single machine running [Docker](https://www.docker.com/).

## Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Git](https://git-scm.com/)
- Text editor of your choice (e.g. [Vim](https://www.vim.org/))

## Installation

Clone the repository:

```sh
$ git clone https://github.com/cedrichopf/vault-dockerized.git
Cloning into 'vault-dockerized'...
```

Create a copy of the example configuration files:

```sh
# Vault Configuration
$ cp config/server.example.hcl config/server.hcl
# Custom Docker Compose Configuration
$ cp override.example.yml docker-compose.override.yml
```

Configure the Vault deployment by adapting the configuration in the `server.hcl` file:

```sh
$ vim config/server.hcl
```

Configure the docker-compose.override.yml file:

```sh
$ vim docker-compose.override.yml
```

Download the Docker images and start the services using docker-compose:

```sh
$ docker-compose pull
$ docker-compose up -d
```

Finally, Vault should be running and available.
