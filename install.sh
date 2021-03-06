#!/bin/bash

# Install oh-my-zsh, zshrc config and theme
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp zsh/.zshrc ~/.zshrc
cp zsh/vemonet_bira.zsh-theme ~/.oh-my-zsh/custom/themes/vemonet_bira.zsh-theme

## Or use the red theme with username:address
# cp zsh/vemonet_bira-red.zsh-theme ~/.oh-my-zsh/custom/themes/vemonet_bira.zsh-theme

# Default ZSH yarn plugin not working, using this one:
git clone https://github.com/buonomo/yarn-completion ~/.oh-my-zsh/custom/plugins/yarn-completion

# Add SSH completion
sudo cp zsh/_ssh_completion /usr/share/zsh/functions/Completion/Unix/_ssh

# Add SSH config
cp ssh_config ~/.ssh/config

# Argo completion not working, might need to create one
#cp -r zsh/argo ~/.oh-my-zsh/custom/plugins

# Use ZSH shell by default
sudo chsh --shell=/usr/bin/zsh $USER