### Aliases for programs
alias eclipse="~/opt/eclipse/eclipse"
alias dropbox="~/.dropbox-dist/dropboxd"
alias g++="g++ --std=c++0x"
alias ipython-nb='ipython notebook'

### Emacs aliases
alias emd='emacs --daemon'
alias emc='emacsclient -c'
alias emt='emacsclient -t'
# alias emkill='emacsclient -e \'(save-buffers-kill-emacs)\'''
function emkill() { 
    emacsclient --e '(save-buffers-kill-emacs)' 
}

alias ..="cd .."
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

### Functions
function mkcd() {
    mkdir "$1"
    cd "$1"
}

function valgrind-run()
{
    echo $1;
    valgrind --tool=memcheck --leak-check=yes ./$1
}
