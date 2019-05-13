# Make the fish prompt look pretty.
function fish_prompt

  set return_val_color 999;
  tty|grep -q tty; and set tty tty; or set tty pts

  set -l USR_HOME "\/home\/$USER"
  set -l USR_HOME_SYMBOL "~"

  set color $return_val_color
  echo -n '┬─'

  set_color -o $return_val_color

  # Display current path but replace $HOME with '~'.
  set_color -o $return_val_color
  echo -n '['
  set_color -o 0ee
  echo -n (pwd | sed -e "
    s/^$USR_HOME/$USR_HOME_SYMBOL/
  ")
  set_color -o $return_val_color
  echo -n ']'

  set_color normal
  echo

  # Prints jobs that are running in the background
  for job in (jobs)
    set_color $return_val_color
    if [ $tty = tty ]
        echo -n '; '
    else
        echo -n '│ '
    end
    set_color brown
    echo $job
  end

  set_color normal
  set_color $return_val_color
  echo -n '╰─>'

  set_color -o $return_val_color
  echo -n '$ '
  set_color normal

end

