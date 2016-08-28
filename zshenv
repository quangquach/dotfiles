# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Customize to your needs...
export JSCTAGS="/usr/local/lib/jsctags:${NODE_PATH}"
#export NODE_PATH=$NODE_PATH:/usr/local/lib/node:/usr/local/share/npm/lib/node_modules:/usr/local/share/npm/bin
export NODE_PATH="/usr/local/lib/node"
export SENCHA_PATH=$HOME/sencha/Cmd/3.1.2.342
export QT_PATH=$HOME/qt/Qt5.0.0/5.0.0/clang_64/bin
#export PYTHON_SHARE_PATH=/usr/local/share/python
export PATH=/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:usr/X11/bin:$PYTHON_SHARE_PATH:$QT_PATH:$NODE_PATH:$SENCHA_PATH:$PATH
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="node_modules/.bin":$PATH
export PATH="$HOME/.cabal/bin":"$HOME/Library/Haskell/bin":$PATH
export LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

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

export COCOS2DX_HOME="$HOME/Projects/cocos2d-x/"

export LUA_PATH="$HOME/.luarocks/share/lua/5.2/?.lua;$HOME/.luarocks/share/lua/5.2/?/init.lua;/usr/local/share/lua/5.2/?.lua;/usr/local/share/lua/5.2/?/init.lua;/usr/local/Cellar/luarocks/2.2.0_1/share/lua/5.2/?.lua"
export LUA_PATH=$LUA_PATH:"$HOME/Projects/cocos2d-x/cocos/scripting/lua-bindings/script"
export LUA_CPATH='$HOME/.luarocks/lib/lua/5.2/?.so;/usr/local/lib/lua/5.2/?.so;/usr/local/lib/lua/5.2/loadall.so;./?.so'
export CARGO_HOME="$HOME/.cargo/bin"
export PATH=$PATH:$CARGO_HOME

export LIBCLANG_LIBRARY="/usr/local/opt/llvm/lib"
export LIBCLANG_INCLUDE_DIR="/usr/local/opt/llvm/include"

# go go go
export GOROOT=/usr/local/Cellar/go/1.2
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOROOT/bin

export PATH=$PATH:$GOPATH/bin
export RUST_SRC_PATH=$HOME/Projects/rustc-1.10.0/src


export PATH=/Applications/Racket\ v6.2/bin/:$PATH
