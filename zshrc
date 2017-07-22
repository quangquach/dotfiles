# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git git-flow rails heroku rvm python ruby brew pip django zsh-syntax-highlighting zsh-completions)

# RVM
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source $ZSH/oh-my-zsh.sh


# stop showing dummy message
alias gitk='gitk 2>/dev/null'

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR="mvim -v"

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# use incremental search
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# handy keybindings
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# expand functions in the prompt
setopt prompt_subst

# prompt
#export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries
setopt histignoredups

# keep TONS of history
export HISTSIZE=4096

# automatically pushd
setopt auto_pushd
export dirstacksize=5

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB

export LANG=en_US.UTF-8
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

export PROJECT_HOME=$HOME/Projects

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Get the current ruby version in use with RVM:
if [ -e ~/.rvm/bin/rvm-prompt ]; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rvm:(%{$fg[green]%}\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg_bold[blue]%})%{$reset_color%} "
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rbenv:(%{$fg[green]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg_bold[blue]%})%{$reset_color%} "
  fi
fi

RPROMPT="$RUBY_PROMPT_ $RPROMPT"

# AWS IAM tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

# AWS EC2
export EC2_AMITOOL_HOME="/usr/local/Library/LinkedKegs/ec2-ami-tools/jars"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

fpath=(/usr/local/share/zsh-completions $fpath)

# avoid stupid correction
if [ -f ~/.zsh_nocorrect ]; then
  while read -r COMMAND; do
    alias $COMMAND="nocorrect $COMMAND"
  done < ~/.zsh_nocorrect
fi

# fun stuff: fortune + cowsay
function boreme() {
  COWDIR=/usr/local/share/cows/; COWNUM=$(($RANDOM%$(ls $COWDIR | wc -l))); COWFILE=$(ls $COWDIR | sed -n ''$COWNUM'p'); fortune ~/.quotes | cowsay -f $COWFILE
}

boreme

# auto select virtualenv when cd into a dir that has .venv
# avoid re-load current enviroment
function has_virtualenv() {
  if [ -e .venv ]; then
    local venv=$(echo `cat .venv`)
    if [ $VIRTUAL_ENV ]; then
      local current_venv=$(basename $VIRTUAL_ENV)
      if [ "$venv" != "$current_venv" ]; then
        workon $venv
      fi
    else
      workon $venv
    fi
  fi
}

function venv_cd {
  cd "$@" && has_virtualenv
}

alias cd="venv_cd"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


__rvm_project_rvmrc

# Google App Engine SDK
#
#export PATH=/Users/lawrencetaur/google-cloud-sdk/bin:$PATH
# The next line updates PATH for the Google Cloud SDK.
#source "$HOME/google-cloud-sdk/path.zsh.inc"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# The next line enables bash completion for gcloud.
#source "$HOME/google-cloud-sdk/completion.zsh.inc"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# completion
autoload -U compinit
compinit

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
