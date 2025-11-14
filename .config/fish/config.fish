if status is-interactive
    export EDITOR=nvim
    fastfetch
    zoxide init fish --cmd cd | source   # Commands to run in interactive sessions can go here
    export FZF_CTRL_T_COMMAND="fd . ."
    export FZF_ALT_C_COMMAND="fd -H -t d . $HOME"
    fzf --fish | source
end
