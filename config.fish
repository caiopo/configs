set PATH /home/caio/.local/bin/ $PATH
set PATH /home/caio/.luarocks/bin/ $PATH

alias bye='poweroff'
alias t='gnome-terminal'
alias git=hub
alias myip='wget http://ipinfo.io/ip -qO -'
alias pgrep='pgrep -l'
alias compose='docker-compose'
alias chrome='google-chrome-stable'

alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

function fuck -d "Correct your previous console command"
    set -l exit_code $status
    set -x TF_ALIAS fuck
    set -l fucked_up_command $history[1]
    thefuck $fucked_up_command | read -l unfucked_command
    if [ "$unfucked_command" != "" ]
        eval $unfucked_command
        if test $exit_code -ne 0
            history --delete $fucked_up_command
            history --merge ^ /dev/null
            return 0
        end
    end
end

set -g VIRTUALFISH_VERSION 1.0.5
set -g VIRTUALFISH_PYTHON_EXEC /usr/bin/python
. /home/caio/.local/lib/python3.6/site-packages/virtualfish/virtual.fish
emit virtualfish_did_setup_plugins
