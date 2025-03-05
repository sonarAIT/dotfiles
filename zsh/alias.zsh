# aliases
alias ls='eza'
alias la='eza -al'
alias vim='nvim'

# for WSL2
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  alias pbcopy='clip.exe'
  alias nautilus='explorer.exe'
  alias open='explorer.exe'
fi

