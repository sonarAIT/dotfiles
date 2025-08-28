# for WSL2
if uname -r | grep -q -i "microsoft\|wsl"; then
  whome="/mnt/c/Users/jet01"
  alias whome="cd $whome"

  ins="/mnt/d/ins"
  alias ins="cd $ins"
fi
