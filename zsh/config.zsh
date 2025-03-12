# for WSL2
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  # for mikan os
  export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0

  # asdf
  # . /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh

  # for ollama
  export OLLAMA_MAX_LOADED_MODELS=2
fi

