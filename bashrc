## alias
alias ls='ls -F'
alias ll='ls -l'
alias la='ls -A'
alias cls=clear

## source all services
BOOTDIR="$HOME/.termux/boot"
[ -d $BOOTDIR ] &&
  for one in $(ls -1 $BOOTDIR); do
    source $BOOTDIR/$one
  done
