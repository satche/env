# Variables
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.env/zsh-custom
ZSH_DISABLE_COMPFIX=true
ZSH_THEME='satche'

# History
HIST_STAMPS="dd/mm/yyyy"
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Completion
zstyle ':completion:*' menu select

# Plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# EXPORT
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Android
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# BINDKEYS
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete
