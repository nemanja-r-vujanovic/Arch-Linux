#!/bin/bash

cat > "$HOME/.bash_aliases" <<'EOF'
alias rm='gio trash'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias uu='bash "$HOME/sync/maintenance/upgrade-system.sh"'
alias cc='bash "$HOME/sync/maintenance/clean-junk.sh"'
alias rs='bash "$HOME/sync/maintenance/restore-sandboxed.sh"'
alias fls='bash "$HOME/sync/maintenance/list-sandboxed.sh"'
EOF