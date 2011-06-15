<<<<<<< HEAD
# START: Set the DISPLAY 
if [[ -z $DISPLAY && -z $SSH_CONNECTION && -o interactive ]]; then

  disp_no=($( ps -wwx | grep -F X11.app | awk '{print $NF}' | grep -e ":[0-9]"  ))

  if [[ -n $disp_no ]];then
    export DISPLAY=${disp_no}.0
  else
    # FAILSAFE: dumb setting of DISPLAY gives a monochromatic message
    export DISPLAY=:0.0
  fi
fi
# END: Set the DISPLAY

export EVENT_NOKQUEUE=1 # for memcache

export EDITOR=vim

export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad

export ARCHFLAGS='-arch x86_64'

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

[[ -s "/Users/patbenatar/.rvm/scripts/rvm" ]] && . "/Users/patbenatar/.rvm/scripts/rvm"
=======
export MANPATH=/opt/local/share/man:$MANPATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/jessicasuttles/.gem/ruby/1.8/bin:$PATH
export CDPATH=~/Projects:~/
export RUBYOPT='rubygems'
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='3;33'
export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1
export PROJECTS=$HOME/Projects
>>>>>>> 17f15f93f90d4c06553f5c32a7c8d6bbfc700974
