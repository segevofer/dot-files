# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
alias python=python3
# alias chromium-browser=chromium

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
  prompt paradox
fi

# Customize to your needs...
export PATH=/opt/homebrew/bin:$PATH

export PATH="$HOME/.npm/bin:$PATH"

# export PATH="$HOME/.nodenv/shims:$PATH"
export PATH="/Users/ofs/.pyenv:$PATH"
eval "$(pyenv init --path)"
# source ~/venv/bin/activate

# python venv configuration
# export PATH=$PATH:~/venv/bin/

# Work related alias and shortcuts
. ~/.work.zshrc

# alias
alias reload='source ~/.zshrc'

# z jump around - https://github.com/rupa/z
. /usr/local/etc/z.sh

# zsh-git-prompt - https://github.com/olivierverdier/zsh-git-prompt
source "/opt/homebrew/share/zsh-git-prompt/zsh-git-prompt.sh"
PROMPT='%d %b$(git_super_status) 🥑 '

# zsh-autosuggestions - https://github.com/zsh-users/zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting - https://github.com/zsh-users/zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# git-friendly shell completion
fpath=($(brew --prefix)/share/zsh/functions $fpath)
autoload -Uz _git && _git
compdef __git_branch_names branch

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ofs/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ofs/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ofs/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ofs/google-cloud-sdk/completion.zsh.inc'; fi


export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

echo Welcome back Ofer

# Created by `pipx` on 2023-06-04 08:21:32
export PATH="$PATH:/Users/ofs/.local/bin"

# Created by `pipx` on 2023-06-04 08:21:40
export PATH="$PATH:/Users/ofs/Library/Python/3.10/bin"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
