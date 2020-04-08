export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="sorin"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  bundler
  capistrano
  gem
  git
  npm
  osx
  rails
  ruby
  ssh-agent
  tmux
  zsh-autosuggestions
)

# User configuration

export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$(brew --prefix openssl)/bin:$PATH
export PATH=$(python -m site --user-base)/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

source $ZSH/oh-my-zsh.sh

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

export ANSIBLE_NOCOWS=1

function supress-rspec() {
  rspec "$@" 2> /dev/null
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export SILENCE_SCIP_DEPRECATIONS=1 # Silence SCIP Depracator
