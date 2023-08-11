# PRELUDE
A not-so-crazy Neovim configuration

## Dependencies
- Neovim 0.8 or above
- Git
- A C compiler
- A Nerd Font

## Install
```sh
# Backup your current config!
mv ~/.config/nvim ~/.config/nvim.bak

# Install Prelude
git clone https://github.com/kenos1/neovim-prelude ~/.config/nvim

cd ~/.config/nvim/lua

# Select a language server provider!
cp extras/mason.lua plugins/mason.lua # Recommended for everyone else
cp extras/lazy-lsp.lua plugins/lazy-lsp.lua # Recommended for NixOS users


# Open Neovim!
nvim
```

## Design Principles

- The basics of most Neovim configurations (settings and plugins everyone can agree on)
- No hidden surprises (we try to change Neovim as little as possible while providing a beautiful and swift experience)
- Fully hackable (you can see everything in the config)
- Opt-out lazy-loading (to get you into having an optimized config)
- Extra modules that are opt-in (enable special plugins or configs)
- Nothing too crazy (did you read the description?)
