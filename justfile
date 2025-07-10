_default:
    @just --list  

_showman_package *ARGS:
    uvx showman package typst.toml {{ ARGS }}

# install to local repository
install: (_showman_package "--overwrite")

# install a symlinked version for development
install-dev: (_showman_package "--overwrite" "--symlink")
