alias ls="ls -G"
#alias vimf="find . -name $1 | head -1 | xargs -d '\n' vim"
alias j="cd .."
alias l="cd -"

PROMPT_COMMAND='LAST="`cat /tmp/x`"; exec >/dev/tty; exec > >(tee /tmp/x)'
