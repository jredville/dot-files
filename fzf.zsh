# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jim/.fzf/bin* ]]; then
  export PATH="$PATH:/home/jim/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jim/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jim/.fzf/shell/key-bindings.zsh"

