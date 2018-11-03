[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh

# Share history between terminals
setopt inc_append_history
setopt share_history


# Show history when clicking up/down
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

export PATH=/usr/local/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"Copy


# Local aliases
alias ll='ls -la'
alias ws='cd ~/Workspace'
alias santa='ws && cd santa && sudo yarn ssl showstock'
alias online='ws && cd santa-editor-online-preview && grunt register && ws && cd santa-online-preview && grunt register && sudo yarn start'
alias update='ws && cd santa && pull && yarn && ws && cd santa-editor && pull && yarn && ws && cd santa && yarn build && ws && cd santa-editor && yarn build'
alias build='ws && cd santa && yarn && yarn build && ws && cd santa-editor && yarn && yarn build'
alias lint='node node_modules/santa-utils/scripts/quick-eslint.js'
alias linked='ll node_modules/ | grep ^l'
alias roir='git clean -fxd -e .idea/ && yarn && yarn build'

. /usr/local/etc/profile.d/z.sh

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

fpath=(/usr/local/share/zsh-completions $fpath)

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship



source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

echo '' && echo Welcome back Ofer
