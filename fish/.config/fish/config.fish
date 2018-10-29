# Install fisherman if necessary
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set fish_greeting

set -x LS_COLORS 'ow=01;36;40'

alias vim "nvim"
alias vi "nvim"

set -gx PATH $PATH $HOME/.local/bin

umask 022

