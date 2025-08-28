# aliases
alias ls='eza'
alias la='eza -al'
alias vim='nvim'

# for WSL2
if uname -r | grep -q -i "microsoft\|wsl"; then
  alias pbcopy='clip.exe'
  alias nautilus='explorer.exe'
  alias open='explorer.exe'
fi
