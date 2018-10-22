# Install fisherman if necessary
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set fish_greeting

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set -x LS_COLORS 'ow=01;36;40'

alias vim "nvim"
alias vi "nvim"
alias dark "eval sh $HOME/.config/base16-shell/scripts/base16-gruvbox-dark-hard.sh"
alias light "eval sh $HOME/.config/base16-shell/scripts/base16-gruvbox-light-hard.sh"

dark

set -gx PATH $PATH $HOME/.local/bin

umask 022

