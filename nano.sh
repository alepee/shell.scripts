export PATH_TO_NANO=$(which nano)
function nano() {
  if [ $USER != 'root' ]; then
    if [ -f $1 ]; then
      if [ ! -w $1 ]; then
        echo -n "This file is not writable! Do you want to sudo (y/N) "
        read smthg
        if [ "$smthg" != 'y' ]; then
          return;
        fi
        sudo $(echo $PATH_TO_NANO) $*
        return;
      fi
    fi
  fi

  $(echo $PATH_TO_NANO) $*
}
