<<<<<<< HEAD
function _rake_does_task_list_need_generating () {
  if [ ! -f .zsh_rake_cache ]; then
    return 0;
=======
_rake_does_task_list_need_generating () {
  if [ ! -f .zsh_rake_cache ]; then return 0;
>>>>>>> 17f15f93f90d4c06553f5c32a7c8d6bbfc700974
  else
    accurate=$(stat -f%m .zsh_rake_cache)
    changed=$(stat -f%m Rakefile)
    return $(expr $accurate '>=' $changed)
  fi
}

<<<<<<< HEAD
function _rake () {
  if [ -f Rakefile ]; then
    if _rake_does_task_list_need_generating; then
      echo "\nGenerating zsh rake cache..." > /dev/stderr
      rake --silent --tasks | cut -d " " -f 2 > .zsh_rake_cache
    fi
    reply=( `cat .zsh_rake_cache` )
  fi
}
compctl -K _rake rake
=======
_rake () {
  if [ -f Rakefile ]; then
    if _rake_does_task_list_need_generating; then
      rake --silent --tasks | cut -d " " -f 2 > .zsh_rake_cache
    fi
    compadd `cat .zsh_rake_cache`
  fi
}

compdef _rake rake
>>>>>>> 17f15f93f90d4c06553f5c32a7c8d6bbfc700974
