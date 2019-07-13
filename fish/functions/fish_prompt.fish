set -U fish_prompt_color_userhost green
set -U fish_prompt_color_cwd  blue
set -U fish_prompt_color_git  yellow

function fish_prompt --description 'Write out the prompt'
  
  set -l last_status $status

  set_color --bold $fish_prompt_color_userhost
  printf '\n'
  printf (whoami)
  printf '@'
  printf (hostname -s)
  printf ' '
  set_color --bold $fish_prompt_color_cwd
  printf (prompt_pwd)

  # git status

  set_color --bold $fish_prompt_color_git
  fish_prompt_git

  if not test $last_status -eq 0
    set_color --bold $fish_color_error
  else
    set_color --bold $fish_prompt_color_cwd
  end

  printf ' $ '
  set_color normal

end
