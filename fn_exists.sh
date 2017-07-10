fn_exists() {
  if [[ -n "$(type $1)" && "$(type $1)" == *function* ]]; then
    echo $1 is a function;
    return 1;
  else
    echo $1 is NOT a function;
    return 0;
  fi
}
