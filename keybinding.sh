bind='bind -n'
mod='M-'

# Bind keys to switch between workspaces.
bind_switch() {
    tmux $bind "$1" if-shell "tmux select-window -t :$2" "" "new-window -t :$2"
}
# Switch to workspace
bind_switch "${mod}1" 1
bind_switch "${mod}2" 2
bind_switch "${mod}3" 3
bind_switch "${mod}4" 4
bind_switch "${mod}5" 5
bind_switch "${mod}6" 6
bind_switch "${mod}7" 7
bind_switch "${mod}8" 8
bind_switch "${mod}9" 9

# Alternate move between panes
tmux bind -n S-Left previous-window
tmux bind -n S-Right next-window
