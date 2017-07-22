################################################################################
# Colors and shell prompt

export PS1="\w "

# End colors
################################################################################
################################################################################
# Preserve bash history in multiple terminal windows

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Useful timestamp format
HISTTIMEFORMAT='%F %T '

# End history
################################################################################
################################################################################
# Aliases

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias which='type -all'                     # which:        Find executables
alias show_options='shopt'                  # Show_options: display bash options settings
alias memHogsTop='top -l 1 -o rsize | head -20'
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias topForever='top -l 9999999 -s 10 -o cpu'
alias pull='$HOME/github/tools/pull.sh'
alias push='$HOME/github/tools/push.sh'
alias server='echo python -m SimpleHTTPServer 8001 && python -m SimpleHTTPServer 8001'
alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias killchrome='killall -9 "Google Chrome"'

# End Aliases
################################################################################

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/afeddersen/google-cloud-sdk/path.bash.inc' ]; then source '/Users/afeddersen/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/afeddersen/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/afeddersen/google-cloud-sdk/completion.bash.inc'; fi
################################################################################
