# RVM

# Customize to your needs...
export NODE_PATH=$HOME/.nvm/versions/node/v8.11.3/bin
export PATH=/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:usr/X11/bin #:$PYTHON_SHARE_PATH:$QT_PATH:$NODE_PATH:$NODE_BIN:$SENCHA_PATH:$PATH
export PATH="$HOME/.npm-packages/bin:/usr/local/share/npm/bin:$PATH"
export PATH="node_modules/.bin":$PATH
#export LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Source pip and virtualenvwrapper
#export PYTHONPATH=/usr/local/Cellar/python@2/2.7.14_1/Frameworks/Python.framework/Versions/2.7/bin
#export PATH=$PATH:$PYTHONPATH
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/share/python/virtualenv
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python@2/bin/python2
#export WORKON_HOME=$HOME/.virtualenvs
#source $WORKON_HOME/virtualenvwrapper.sh

export CARGO_HOME="$HOME/.cargo/bin"
export PATH=$PATH:$CARGO_HOME

export LIBCLANG_LIBRARY="/usr/local/opt/llvm/lib"
export LIBCLANG_INCLUDE_DIR="/usr/local/opt/llvm/include"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
#export PATH="$(yarn global bin | grep -o '/.*'):$PATH"

alias lein='rlwrap lein'
alias scheme='rlwrap scheme'
#source $HOME/anaconda3/bin/activate
