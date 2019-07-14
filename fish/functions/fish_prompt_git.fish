set -U fish_color_git_dirty red
set -U fish_color_git_ahead red
set -U fish_color_git_staged yellow

set -U fish_color_git_added green
set -U fish_color_git_modified blue
set -U fish_color_git_renamed magenta
set -U fish_color_git_deleted red
set -U fish_color_git_unmerged yellow
set -U fish_color_git_untracked cyan

set -U fish_prompt_git_status_added '✚'
set -U fish_prompt_git_status_modified '*'
set -U fish_prompt_git_status_renamed '➜'
set -U fish_prompt_git_status_deleted '✖'
set -U fish_prompt_git_status_unmerged '═'
set -U fish_prompt_git_status_untracked '.'

function fish_prompt_git --description 'Write out the git prompt'
  set -l branch (git symbolic-ref --quiet --short HEAD 2>/dev/null)
  if test -z $branch
    return
  end

  set -l index (git status --porcelain 2>/dev/null)
  if test -z "$index"
    printf ' (%s)' $branch
    return
  end

  git diff-index --quiet --cached HEAD 2>/dev/null
  set -l staged $status
  if test $staged = 1
    set branch_color $fish_color_git_staged
  else
    set branch_color $fish_color_git_dirty
  end

  set_color $branch_color
  printf  ' (%s ' $branch

  set -l info
  for i in $index
    switch $i
      case 'A  *'
        set i added
      case 'M  *' ' M *'
        set i modified
      case 'R  *'
        set i renamed
      case 'D  *' ' D *'
        set i deleted
      case 'U  *'
        set i unmerged
      case '?? *'
        set i untracked
    end

    if not contains $i $info
      set info $info $i
    end
  end

  for i in added modified renamed deleted unmerged untracked
    if contains $i $info
      eval 'set_color $fish_color_git_'$i
      eval 'printf $fish_prompt_git_status_'$i
    end
  end

  set_color $branch_color
  printf  ')' 
  set_color normal
end
