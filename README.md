thoughtbot dotfiles
===================

Requirements
------------

Set zsh as your login shell.

    chsh -s /bin/zsh

Install
-------

First, [fork this repo](/thoughtbot/dotfiles#fork_box) on Github.

Then, clone your Github fork onto your laptop and install it:

    git clone git@github.com:your-github-name/dotfiles.git
    cd dotfiles
    ./install.sh

This will create symlinks for config files in your home directory. If you
include the line "DO NOT EDIT BELOW THIS LINE" anywhere in a config file, it
will copy that file over instead of symlinking it, and it will leave
everything above that line in your local config intact.

You can safely run `./install.sh` multiple times to update.

Why fork?
---------

You should be able to experiment with your own dotfiles, save them in version
control, and still get updates from `thoughtbot/dotfiles`.

The `master` branch is for your customizations and the `upstream` branch is for
thoughtbot's updates.

Set up the upstream branch
--------------------------

You only have to do this once:

    git remote add upstream git@github.com:thoughtbot/dotfiles.git
    git fetch upstream
    git checkout -b upstream upstream/master

Make your own customizations
----------------------------

Put your customizations at the top of files, separated by "DO NOT EDIT BELOW
THIS LINE."

For example, the top of your `~/.gitconfig` might look like this:

    [user]
      name = Joe Ferris
      email = jferris@thoughtbot.com

    # DO NOT EDIT BELOW THIS LINE

    [push]
      default = current

The top of your `~/.zlogin` might look like this:

    # RVM
    [[ -s '/Users/croaky/.rvm/scripts/rvm' ]] && source '/Users/croaky/.rvm/scripts/rvm'

    # DO NOT EDIT BELOW THIS LINE

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

Get thoughtbot's updates
------------------------

Each time you want to include thoughtbot's changes:

    git checkout upstream
    git pull
    git checkout master
    git rebase upstream

Addition (Quang Quach customs)
------------------------------
### Cloning code

    git clone git://github.com/quangquach/dotfiles.git

### Install zsh

    chsh -s /bin/zsh
    git submodule update --init oh-my-zsh

### zsh-syntax-highlighting
* Clone the code
```
mkdir -p oh-my-zsh/custom/plugins
cd oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

* Edit `zshrc`, in **last** position
````
plugins=([plugins...] zsh-syntax-highlighting)
````
* Source `~/.zshrc`

    source ~/.zshrc

### Command-T
```
rvm use system
cd ~/.vim/bundle/Command-T/ruby/command-t
ruby extconf.rb
make
```

### flake8
```
pip install flake8
```

### Javascript ctags in VIM
```
brew install ctags
git clone --recursive https://github.com/mozilla/doctorjs.git
cd doctorjs
make
make install
```

Credits
-------

Thank you, [contributors](/thoughtbot/dotfiles/graphs/contributors)!

![thoughtbot](http://thoughtbot.com/images/tm/logo.png)

Dotfiles is maintained by [thoughtbot, inc](http://thoughtbot.com/community)
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

Dotfiles is © 2009-2013 thoughtbot, inc. It is free software and may be
redistributed under the terms specified in the MIT-LICENSE file.
