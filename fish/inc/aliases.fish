# Simple aliases

alias ll 'ls -al --color'
alias ls 'ls -l --color'
alias rsync 'rsync -Pave ssh'
alias pavucontrol 'env LC_ALL=C pavucontrol'

alias indent 'indent -kr -ut -brf -i8 -ts8'

alias a2ps 'a2ps --left-title="S. Druon" --left-footer="" --right-footer="" --header="" -R -1 -l 140'

alias s2disk 'sudo s2disk'
alias s2ram  'sudo s2ram -f'
alias s2both 'sudo s2both'

alias keyboard_us 'setxkbmap us "" compose:rwin'
alias keyboard_fr 'setxkbmap fr'

function bat -d 'Display battery level'
	upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|time\ to\ full|percentage"
end

function sync_watch -d 'Show the progress of sync operations'
    egrep "(Dirty|^Cached:)" /proc/meminfo
end

function web_serv -d 'Start a small webserver on port 8080'
    python3 -m http.server 8080
end
