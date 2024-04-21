if test -e /usr/local/bin/brew
    eval (/usr/local/bin/brew shellenv)
else
    eval (/opt/homebrew/bin/brew shellenv)
end

if status is-interactive
    # Set Path up front (example)
    # fish_add_path -gP "$HOME/Ilm/bin"

    # Starship
    starship init fish | source
    # Atuin
    atuin init fish | source
end
