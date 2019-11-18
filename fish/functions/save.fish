# Copies files to ~/scratch with the current date.
function save
  if test (count $argv) -gt 0
    for fname in $argv
      switch $fname
      case "*.*"
        cp $fname ~/scratch/(echo $fname | string replace "." _(date +%Y-%m-%d).)
      case "*"
        cp $fname ~/scratch/(echo "$fname"_(date +%Y-%m-%d))
      end
    end
  end
end
