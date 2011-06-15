<<<<<<< HEAD
# Keeps the paths from growing too big    
typeset -U path manpath fpath

# See if we can use colors.
# http://aperiodic.net/phil/prompt/
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
  colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
  eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
  eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
  (( count = $count + 1 ))
done
PR_NO_COLOUR="%{$terminfo[sgr0]%}"

[[ -s "/Users/patbenatar/.rvm/scripts/rvm" ]] && . "/Users/patbenatar/.rvm/scripts/rvm"

source ~/.zsh/functions.zsh
source ~/.zsh/options.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/prompt.zsh


=======
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

autoload -U compinit && compinit
autoload -U zmv
autoload colors && colors

source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh 
source ~/.zsh/completion_sake.zsh 
source ~/.zsh/projects.zsh



ruby -v
>>>>>>> 17f15f93f90d4c06553f5c32a7c8d6bbfc700974
