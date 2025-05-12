_default:
    @just --list  

# prep a python venv for using showman
init-showman:
    #!/bin/bash
    python3 -m venv venv
    . venv/bin/activate
    pip install showman

_showman_package *ARGS:
    #!/bin/bash
    . venv/bin/activate
    showman package typst.toml {{ ARGS }}

# install to local repository
install: (_showman_package "--overwrite")

# install a symlinked version for development
install-dev: (_showman_package "--overwrite" "--symlink")
