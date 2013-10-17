alias ls="ls -G"
#alias vimf="find . -name $1 | head -1 | xargs -d '\n' vim"
alias j="cd .."
alias l="cd -"

alias con="cd $PROJ_HOME/app/controllers"
alias app="cd $PROJ_HOME/app"
alias mod="cd $PROJ_HOME/app/models"
alias vie="cd $PROJ_HOME/app/views"
alias ass="cd $PROJ_HOME/app/assets"
alias pub="cd $PROJ_HOME/public"
alias conf="cd $PROJ_HOME/config"
PROMPT_COMMAND='LAST="`cat /tmp/x`"; exec >/dev/tty; exec > >(tee /tmp/x)'
