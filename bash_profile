alias ll='ls -la'
alias ws='cd ~/Workspace'
alias santa='ws && cd santa && sudo yarn ssl showstock'
alias online='ws && cd santa-editor-online-preview && grunt register && ws && cd santa-online-preview && grunt register && sudo yarn start'
alias update='ws && cd santa && pull && yarn && ws && cd santa-editor && pull && yarn && ws && cd santa && yarn build && ws && cd santa-editor && yarn build'
alias build='ws && cd santa && yarn && yarn build && ws && cd santa-editor && yarn && yarn build'
alias lint='node node_modules/santa-utils/scripts/quick-eslint.js'
alias linked='ll node_modules/ | grep ^l'
alias roir='git clean -fxd -e .idea/ && yarn && yarn build'

[ -s ~/.nvm/nvm.sh ] && source ~/.nvm/nvm.sh
. /usr/local/etc/profile.d/z.sh

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi


