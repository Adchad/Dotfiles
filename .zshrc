# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi


autoload -U promptinit; promptinit
prompt spaceship

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
#set -o vi


alias p='ps -ef |grep'


export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC


export PATH="$HOME/bin:$PATH"

alias z='zathura'
alias nb='jupyter-notebook'

alias vim="nvim"
alias v="nvim -S ~/.config/nvim/sessions/current.vim"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias vimconf="nvim ~/.config/nvim/init.vim"

alias i3conf="nvim ~/.config/i3/config"

alias nb="jupyter-notebook"

alias ns="newsboat"
