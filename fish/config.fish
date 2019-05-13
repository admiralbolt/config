# Colors
set -gx TERM xterm-256color

# Powerline shtuff.
set PATH $PATH /home/admiralbolt/.local/bin/
set -x POWERLINE_COMMAND powerline
set -x POWERLINE_CONFIG_COMMAND powerline-config

# Add conda
set PATH /home/admiralbolt/anaconda3/bin/ $PATH

# set fish_function_path $fish_function_path \
#   /home/admiralbolt/.local/lib/python3.6/site-packages/powerline/bindings/fish
# powerline-setup

# Get here faster!
set fish_home /home/admiralbolt/.config/fish

# Load aliases
source /home/admiralbolt/.config/fish/aliases.fish
# Load abbreviations
source /home/admiralbolt/.config/fish/abbr.fish

# Load custom environments.
