(($+commands[docker])) || return 0


if [[ $OSTYPE == mac* ]]; then
  verbose Setting up $fg[red]docker$reset_color aliases

  alias moby='docker run --rm -it --privileged --pid=host walkerlee/nsenter -t 1 -m -u -i -n sh'
fi

# Funktionen stehen im Ordner docker/bin

# Status anzeige
alias dcl='docker container ls'

# Standard Befehle
alias dpull='docker pull'
alias dpush='docker push'
alias db='docker build'

alias dcu='docker-compose up'
alias dcd='docker-compose down'
