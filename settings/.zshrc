# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
)

# zsh
source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# java
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8"`
PATH=${JAVA_HOME}/bin:${PATH}

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# direnv
eval "$(direnv hook zsh)"

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Alacritty
export LANG=ja_JP.UTF-8

# golnag
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# node
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# when start zsh launch tmux
if which tmux > /dev/null; then
    if [ -z $TMUX ] &&  && [[ $VSCODE_PID == "" ]]; then
      if tmux has-session > /dev/null; then
        tmux attach
      else
        tmux new-session
      fi
    fi
fi
