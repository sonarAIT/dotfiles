# aliases
alias ls='eza'
alias la='eza -al'
alias vim='nvim'
alias ssh-copy-id='ssh-copy-id -i ~/.ssh/id_ed25519'

# for WSL2
if uname -r | grep -q -i "microsoft\|wsl"; then
  alias pbcopy='clip.exe'
  alias nautilus='explorer.exe'
  alias open='explorer.exe'
fi

