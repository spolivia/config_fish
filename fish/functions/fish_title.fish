function fish_title
  printf (whoami)
  printf '@'
  printf (hostname -s)
  printf ' '
  printf (prompt_pwd)
  printf ' '
  fish_prompt_git
end

