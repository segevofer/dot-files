# source ~/venv/bin/activate
# export PATH=$PATH:~/venv/bin/

# alias python=python3

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PATH=/opt/homebrew/bin:$PATH
# export PATH=/opt/homebrew/opt/python@3.9/Frameworks/Python.framework/Versions/3.9/bin:$PATH

export PATH="$HOME/.nodenv/shims:$PATH"
export PATH="/Users/ofs/.pyenv:$PATH"
eval "$(pyenv init --path)"
source ~/venv/bin/activate

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

# python venv configuration
source ~/venv/bin/activate
export PATH=$PATH:~/venv/bin/

# git-friendly shell completion
fpath=($(brew --prefix)/share/zsh/functions $fpath)
autoload -Uz _git && _git
compdef __git_branch_names branch

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ofs/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ofs/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ofs/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ofs/google-cloud-sdk/completion.zsh.inc'; fi

echo Welcome back Ofer
