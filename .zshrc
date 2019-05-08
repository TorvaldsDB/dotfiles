#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file

PATH=$HOME/bin:$PATH:/usr/local/mysql/bin
export PATH
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i # is it necessary here?

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# LD
PGHOME=/Applications/Postgres.app/Contents/Versions/latest
export PATH="$PGHOME/bin:$PATH"
export DYLD_FALLBACK_LIBRARY_PATH=$PGHOME/lib

MYSQL_HOME=/usr/local/mysql
export PATH="$MYSQL_HOME/bin:$MYSQL_HOME/support-files:$PATH"
export DYLD_FALLBACK_LIBRARY_PATH="$MYSQL_HOME/lib:$DYLD_FALLBACK_LIBRARY_PATH"
