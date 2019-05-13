# Copies file from ~/scratch from the latest date.
function load
  if [ (count $argv) > 0 ]
    for fname in $argv
      switch $fname
      case "*.*"
        set regex (echo $fname | string replace "." "_[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9].")
      case "*"
        set regex (echo "$fname"_[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9])
      end
      set files (ls ~/scratch/ | grep $regex)
      cp ~/scratch/(echo $files[-1]) $fname
    end
  end
end
