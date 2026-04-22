#                 ██                    
#                ░██                    
#  ██████  ██████░██      ██████  █████ 
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░ 
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████ 
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░  
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ xero <x@xero.nu>
# ░▓ code   ▓ http://code.xero.nu/dotfiles
# ░▓ mirror ▓ http://git.io/.files
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#█▓▒░ Mohamed brew init
eval "$(/opt/homebrew/bin/brew shellenv)"
# export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
export PATH="/opt/homebrew/bin/python3.10:$PATH"

# Mohamed java init
# export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
# export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export JAVA_HOME="$(brew --prefix openjdk@17)/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"



#█▓▒░ load configs
for config (~/.zsh/*.zsh) source $config


#█▓▒░ Mohamed fzf configs
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# mohamed: hopefully some terraform autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# mohamed: for gcloud to choose python version
export CLOUDSDK_PYTHON=python3.11
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mohamed/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mohamed/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mohamed/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mohamed/google-cloud-sdk/completion.zsh.inc'; fi
