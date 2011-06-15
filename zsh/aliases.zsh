<<<<<<< HEAD
alias :='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'

alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"

alias diff='git diff'

alias gitrm='git ls-files --deleted | xargs git rm'
alias grep='grep --color --line-number '
alias gvim='mvim -p'

alias la='ls -laFh'

alias monitor_http='sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*"'
alias mv='mv -i'
alias mysql='/usr/local/bin/mysql' # --socket=/tmp/mysql.sock
alias mysqladmin='/usr/local/bin/mysqladmin' # --socket=/tmp/mysql.sock
alias mysqlstart='/usr/local/bin/mysqld_safe &'
alias mysqlstop='/usr/local/bin/mysqladmin -p shutdown'

alias opi='open ./public/images'

alias pull='clear; git pull'
alias push='clear; git push'
alias pushed\?='pushed'

alias rmate='mate app config doc db lib public script spec test stories liquid'

alias sc='./script/console'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias st='clear; git status'
alias sudo='nocorrect sudo'

alias startredis='redis-server > /Users/patbenatar/redis.log &'
=======
# My aliases
alias ss='./script/server'
alias sc='./script/console'
alias pull="git pull"
alias ci="git commit"
alias st="git st"
alias fetch="git fetch"
alias "log"="git log"
alias add="git add"
alias tag="ctags -R config -R app -R lib -R script -R spec"
alias tag!="ctags -R ."
alias push="git push"
alias ⚡="open -a Play\ Sound /Users/ehrenmurdick/Documents/Sounds/thunder.wav"
alias ruby="ruby -I $HOME/lib/ruby"
alias fx='git fetch && gitx'
alias giff='git diff | gitx'
alias gitx='gitx --all'

alias sploek="TABNAME=sploek;set_iterm_tab; sploek"

alias g='roogle'

alias redis= 'redis-server > /Users/jessicasuttles/redis.log &'

function reload! () {
  touch tmp/restart.txt
}

function th () {
  mv $* ~/.Trash
}

function git_deleted () {
  git st | rak deleted | awk '{print $3}'
}

function gco () {
  git checkout $*
}

# cd to the default working directory set by current_working_project
function cdefault { 
  export wdir=`cat $HOME/bin/config/current_project_path`
  cd $wdir 
}

function current_working_project {
  pwd > ~/bin/config/current_project_path
}

cdefault

function cdproject { cd $HOME/projects/$* }
compctl -W "$HOME/projects" -g '*(-/)' cdproject

function pgrep {
  ps aux | grep $*
}


function sp {
  bundle exec rspec -cfs spec/$*
}
compctl -W "spec" -g '*' sp


function setIcon () {
  echo "read 'icns' (-16455) \"${1}\";" | /Developer/Tools/Rez -o ${2}
  /Developer/Tools/SetFile -a "C" ${2}
}

function follow () {
  tail -n 0 -f $*
}

function cuke () {
  if [[ -e ./script/cucumber ]]
  then
    ./script/cucumber -f progress features/$*
  else
    cucumber -f progress features/$*
  fi
}
compctl -W "features" -f cuke
compctl -W "$HOME/projects" -g '*(-/)' cdproject

function :w () {
  echo "Ugh. You're not in vim, and your shits all retarded"
}

function v () {
   ssh vm "$*"
}

function topn () {
  top -n ${1} -l 1 | tail -n ${1} | awk 'BEGIN{ORS=","}{print $1}' | xargs ps -p
}

function vack () {
    mvim -p $(ack -l $@ | xargs) &> /dev/null &
}

function sp-serve () {
  script/spec_server &
  touch log/rspec.log
  follow log/rspec.log
}

function diffx () {
  echo "diff --git a/$1 b/$2 $(diff -u $1 $2)" | gitx
}

function t () {
  TABNAME=$1
}

function internet\? {
  (ping -c 3 -t 3 google.com >/dev/null 2>&1 && echo 'yep') || echo 'nope'
}
>>>>>>> 17f15f93f90d4c06553f5c32a7c8d6bbfc700974
