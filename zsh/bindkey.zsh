# for WSL2
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  # word delete
  bindkey '^H' backward-delete-word
  # cursol move
  bindkey '^B' backward-word
  bindkey '^W' forward-word
fi

if [[ "$(uname)" == 'Darwin' ]]; then
  # word delete
  bindkey '^H' backward-delete-word
  # cursol move
  bindkey '^B' backward-word
  bindkey '^W' forward-word
fi
