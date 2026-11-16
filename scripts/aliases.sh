#!/bin/bash

cat > "$HOME/.bash_aliases" <<'EOF'
alias rm='gio trash'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cc='sudo env HOME="$HOME" bash "$HOME/sync/maintenance/clean-junk.sh"'
alias uu='bash "$HOME/sync/maintenance/upgrade-system.sh"'
alias rs='bash "$HOME/sync/maintenance/restore-sandboxed.sh"'
alias fls='bash "$HOME/sync/maintenance/list-sandboxed.sh"'
EOF