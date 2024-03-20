## alias
alias ls='ls -F'
alias ll='ls -l'
alias la='ls -lA'
alias cls=clear

GIT_COMPLETION="$HOME/../usr/etc/bash_completion.d/git-completion.bash"
[ -f $GIT_COMPLETION ] &&
  source $GIT_COMPLETION

## source all services
BOOTDIR="$HOME/.termux/boot"
[ -d $BOOTDIR ] &&
  for one in $(ls -1 $BOOTDIR); do
    source $BOOTDIR/$one
  done

termux-wake-lock
