

autoload -U promptinit; promptinit
#prompt spaceship


autoload -U compinit
zstyle ':completion:*' menu select
compinit

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

alias ..='cd ..'
export VISUAL=nvim;
export EDITOR=nvim;
alias la='ls -A'
alias nf="neofetch"
#set -o vi


alias p='ps -ef |grep'
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
export PATH="$HOME/Bin:$PATH"

alias z='zathura'

alias nb='jupyter-notebook'

alias vim="nvim"
alias v="nvim -S ~/.config/nvim/sessions/current.vim"

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias vimconf="nvim ~/.config/nvim/init.vim"

alias i3conf="nvim ~/.config/i3/config"

alias nb="jupyter-notebook"

alias ns="newsboat"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/home/adam/.config/coc/extensions/coc-clangd-data/install/13.0.0/clangd_13.0.0/bin



GLASSFISH_HOME=$HOME/Github/glassfish6
CLASSPATH=$CLASSPATH:.:$HOME/Github/glassfish6/glassfish/lib/*:$HOME/Github/glassfish6/glassfish/lib/appserv-rt.jar:$HOME/Github/glassfish6/glassfish/lib/javaee.jar
PATH=$HOME/Github/glassfish6/glassfish/bin:$HOME/Github/glassfish6/javadb/bin:$PATH
export GLASSFISH_HOME PATH CLASSPATH


eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/adam/Github/zsh-vi-mode/zsh-vi-mode.plugin.zsh
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word     
source /home/adam/Github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
