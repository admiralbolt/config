# Mac OSX style pbcopy & paste
abbr -a pbcopy xclip -selection clipboard
abbr -a pbpaste xclip -selection clipboard -out

# Auto-fix some common typos
abbr -a clera clear
abbr -a claer clear

# Reload fish source.
abbr -a s source $fish_home/config.fish
