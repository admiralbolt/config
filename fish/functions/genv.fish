# Load another fish file defined in envs.
# This is mostly just to define logical groupings of directories.
function genv
  echo "Loading environment ~/.config/fish/envs/$argv.fish"
  source ~/.config/fish/envs/$argv.fish
end
