# Share history between terminals
setopt inc_append_history
setopt share_history

# Show history when clicking up/down
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# ctrl + arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"Copy
export DISABLE_AUTO_TITLE="true"

# export PS1="%d 🥑 "
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
PROMPT='%d %b$(git_super_status) 🥑 '

DISABLE_AUTO_TITLE="true"

function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# Local aliases
alias ll='ls -la'
alias reload='source ~/.zshrc'

# import local work aliases
. /Users/$USER/.work.zshrc

# zsh configuration:
if [ $ITERM_SESSION_ID ]; then
   export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

. /usr/local/etc/profile.d/z.sh
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

echo Welcome back Ofer

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ofs/workspace/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ofs/workspace/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ofs/workspace/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ofs/workspace/google-cloud-sdk/completion.zsh.inc'; fi
