# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.local/share/.oh-my-zsh"

# Zsh settings
setopt autocd                   # Auto cd when executing directory
setopt prompt_subst             # Required for prompt
setopt hist_expire_dups_first   # Delete duplicates when HISTFILE is full
setopt hist_ignore_dups         # Ignore duplicates
setopt histignorespace          # Don't write to history when prepended by space
setopt hist_verify              # Show with history expansion before executing
setopt inc_append_history       # Add in order of execution
setopt auto_menu                # Show completion menu on tab
setopt complete_in_word         # Completion from both ends
setopt always_to_end            # Move cursor to end on completion

ZSH_THEME="powerlevel10k/powerlevel10k"
export GPG_TTY=$(tty)

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
eval "$(zoxide init zsh)"
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
pct completion zsh > "${fpath[1]}/_pct"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
