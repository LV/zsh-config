# PATH exports
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
export PATH=$PATH:/usr/lib/gcc:~/.config/emacs/bin
export PYTHONPATH=$PYTHONPATH:/opt/bb/bin/
export PATH=$PATH:/opt/bb/bin #BB
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"


# Settings
export LANG=en_US.UTF-8
export TERM_PROGRAM=Alacritty

# Toolbar
export PS1="%~ %# "

# Default Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Tmux always launch
# if [[ "$TERM_PROGRAM" == "Alacritty" ]]; then
#     if [ -z "$TMUX" ]; then
#         tmux attach || tmux new
#     fi
# fi

## FUNCTIONS
mkcdir () {
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}

# ALIASES
alias em="emacs -nw"
alias fd=fdfind
alias lg="lazygit"
alias v="nvim"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
export LS_COLORS="di=34:ln=36:so=35:pi=33:ex=32:bd=33;1:cd=33;1:su=37;41:sg=30;43:tw=30;42:ow=34;42:"
autoload -U colors && colors
PROMPT="%{$fg[blue]%}%~%{$reset_color%} %# "
