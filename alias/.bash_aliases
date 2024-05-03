#Aliases
alias ghm="git commit -m $(date +'%F_%T')"
alias tb="nc termbin.com 9999"

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias ping='ping -c 2'
# for true ping use \ping

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


#Function
cdl(){ cd $1; ls -a;}
mkcd(){ mkdir $1; cd $1; ls -a;}
apt-search(){  apt search $1 | grep --color $1;}

#tmux
select-term(){
    echo select-terminal
    select term in "$@" "create new terminal"; do
        case "$term" in
            "create new terminal")  create-term ;;
            *)      tmux attach -t "$term"
        esac
        break
    done
}

create-term(){
    read -i "input name" -r name
    if [[ -n "$name" ]]
        then tmux new -s "$name"
        else tmux new
    fi
}

tmuxy(){
    mapfile -t sesions < <(tmux ls 2>/dev/null | cut -f1 -d':')
    if [[ "${#sesions[*]}" -eq 0 ]]
        then create-term
        else select-term "${sesions[@]}"
    fi
}
