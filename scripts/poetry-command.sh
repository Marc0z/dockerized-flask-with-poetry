#!/bin/bash

# script usage example:
#
# ./poetry-commands - lists all poetry commands
# ./poetry-commands add <package> - installs <package> and adds it to the poetry.lock / pyproject.toml
# ./poetry-commands remove <package> - removes <package> from container/OS and from poetry.lock / pyproject.toml

docker exec -w /opt/poetry -it nest-web-main poetry $@