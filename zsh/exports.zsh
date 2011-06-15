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