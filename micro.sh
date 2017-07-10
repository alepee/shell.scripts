EDITOR=${EDITOR:-$(which micro)}
edit() { eval "$EDITOR $1" }
