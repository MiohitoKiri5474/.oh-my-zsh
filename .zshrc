export ZSH=$HOME/.oh-my-zsh

plugins=(
  git
)

export TERM="xterm-256color"


# Zsh Theme Setting
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_BATTERY_STAGES=(
   $'▏    ▏' $'▎    ▏' $'▍    ▏' $'▌    ▏' $'▋    ▏' $'▊    ▏' $'▉    ▏' $'█    ▏'
   $'█▏   ▏' $'█▎   ▏' $'█▍   ▏' $'█▌   ▏' $'█▋   ▏' $'█▊   ▏' $'█▉   ▏' $'██   ▏'
   $'██   ▏' $'██▎  ▏' $'██▍  ▏' $'██▌  ▏' $'██▋  ▏' $'██▊  ▏' $'██▉  ▏' $'███  ▏'
   $'███  ▏' $'███▎ ▏' $'███▍ ▏' $'███▌ ▏' $'███▋ ▏' $'███▊ ▏' $'███▉ ▏' $'████ ▏'
   $'████ ▏' $'████▎▏' $'████▍▏' $'████▌▏' $'████▋▏' $'████▊▏' $'████▉▏' $'█████▏' )

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %m.%d.%y}"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir dir_writable vcs) # <= left prompt 設了 "dir"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)  # <= right prompt 設了 "time"

source $ZSH/oh-my-zsh.sh

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig


# Let neoVim to replace vim
mvim() {   (unset GEM_PATH GEM_HOME; command mvim "$@") } 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Golang Setting
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
