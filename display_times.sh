display_time() {
  date +"%H:%M:%S" 2> /dev/null
}
RPROMPT="$(display_time) $RPROMPT"
