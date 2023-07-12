# medienhaus/ remote dev environment

The medienhaus/ remote dev environment configures **Bash** and **Vim**; to install:

```
git clone --bare https://github.com/medienhaus/dotfiles.git $HOME/dotfiles && \
git init --separate-git-dir=$HOME/dotfiles && \
git checkout
```

## Vim plugins

Vim **plugins** are defined as submodules in the `.gitmodules` file; to install:

```
git submodule update --init --remote
```
