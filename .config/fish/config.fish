if status is-interactive
    export EDITOR=nvim
    if command -q fastfetch
        fastfetch
    else if command -q neofetch
        neofetch
    end
    zoxide init fish --cmd cd | source   # Commands to run in interactive sessions can go here
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
    # export LESSOPEN='|bat --paging=never --color=always %s'
    export FZF_CTRL_T_COMMAND="fd . ."
    export FZF_ALT_C_COMMAND="fd -H -t d . $HOME"
    fzf --fish | source
end
