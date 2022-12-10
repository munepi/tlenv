if [[ ! -o interactive ]]; then
    return
fi

compctl -K _tlenv tlenv

_tlenv() {
  local words completions
  read -cA words

  emulate -L zsh

  if [ "${#words}" -eq 2 ]; then
    completions="$(tlenv commands)"
  else
    completions="$(tlenv completions ${words[2,-2]})"
  fi

  reply=("${(ps:\n:)completions}")
}
