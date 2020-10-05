set -U fish_prompt_color_userhost brmagenta
set -U fish_prompt_color_cwd  brblue

function fish_prompt --description 'Write out the prompt'
  
  set -l last_status $status

  set_color --bold $fish_prompt_color_userhost
  printf (whoami)
  printf '@'
  printf (hostname -s)
  printf ' '
  set_color --bold $fish_prompt_color_cwd
  printf (prompt_pwd)

  if not test $last_status -eq 0
    set_color --bold $fish_color_error
  else
    set_color --bold $fish_prompt_color_cwd
  end

  printf ' $ '
  set_color normal

end
