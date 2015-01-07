# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git git-flow rails heroku rvm python ruby brew pip django zsh-syntax-highlighting)

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export JSCTAGS="/usr/local/lib/jsctags:${NODE_PATH}"
#export NODE_PATH=$NODE_PATH:/usr/local/lib/node:/usr/local/share/npm/lib/node_modules:/usr/local/share/npm/bin
export NODE_PATH="/usr/local/lib/node"
export SENCHA_PATH=$HOME/sencha/Cmd/3.1.2.342
export QT_PATH=$HOME/qt/Qt5.0.0/5.0.0/clang_64/bin
export PYTHON_SHARE_PATH=/usr/local/share/python
export PATH=/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:usr/X11/bin:$PYTHON_SHARE_PATH:$QT_PATH:$NODE_PATH:$SENCHA_PATH:$PATH
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="node_modules/.bin":$PATH
export PATH="$HOME/.cabal/bin":$PATH
export LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH

export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_SDK_ROOT_LOCAL=/usr/local/opt/android-sdk
export NDK_ROOT_LOCAL="$HOME/android-ndk-r9"

# Source pip and virtualenvwrapper
export PYTHONPATH=/usr/local/Cellar/python/2.7.9/Frameworks/Python.framework/Versions/2.7/bin
export PATH=$PATH:$PYTHONPATH
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/share/python/virtualenv
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
source $WORKON_HOME/virtualenvwrapper.sh

export COCOS2DX_HOME="$HOME/Projects/cocos2d-x-3.2/cocos2d-x"
export COCOS_CONSOLE_ROOT="$HOME/Projects/cocos2d-x-3.2/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

export MOAI_BIN=$HOME/Projects/moai-dev/release/osx/host-sdl/bin
export MOAI_CONFIG=$HOME/Projects/moai-dev/samples/config

export LUA_PATH=$LUA_PATH:"$HOME/Projects/cocos2d-x-3.2/cocos/scripting/lua-bindings/script"

# stop showing dummy message
alias gitk='gitk 2>/dev/null'

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# completion
autoload -U compinit
compinit

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

# go go go
export GOROOT=/usr/local/Cellar/go/1.2
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOROOT/bin

export PATH=$PATH:$GOPATH/bin

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


__rvm_project_rvmrc

# Google App Engine SDK
#
export PATH=/Users/lawrencetaur/google-cloud-sdk/bin:$PATH
# The next line updates PATH for the Google Cloud SDK.
source "$HOME/google-cloud-sdk/path.zsh.inc"

# The next line enables bash completion for gcloud.
#source "$HOME/google-cloud-sdk/completion.zsh.inc"
