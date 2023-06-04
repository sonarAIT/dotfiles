# for WSL2
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  whome="/mnt/c/Users/Owner"
  alias whome="cd $whome"

  ins="/mnt/d/ins"
  alias ins="cd $ins"
fi

