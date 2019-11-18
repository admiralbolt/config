# Deletes all merged branches excluding master.
function git-prune
  set branches (git branch --v)
  for branch in $branches
    if string match -q -- "*gone*" $branch
      git branch -D (echo $branch | awk '{print $1}')
    end
  end
end
