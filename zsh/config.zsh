# for WSL2
if uname -r | grep -q -i "microsoft\|wsl"; then
  # for mikan os
  export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0

  # for ollama
  export OLLAMA_MAX_LOADED_MODELS=2
fi
