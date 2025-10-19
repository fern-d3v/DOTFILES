
# Path to your Oh My Zsh installation
export PATH="/Applications/Ghostty.app/Contents/MacOS:$PATH"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""  # Disable built-in theme so it doesn't conflict

plugins=(
  git
  brew
  macos
  docker
  docker-compose
  npm
  yarn
  node
  python
  vscode
  history
  web-search
  copypath
  copyfile
  jsontools
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# DISABLE Powerlevel10k if using Oh My Posh
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Optional: fzf integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Optional: iTerm2 integration
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Ghostty shell integration
if [ -n "$GHOSTTY_RESOURCES_DIR" ]; then
    autoload -Uz add-zsh-hook
    add-zsh-hook -Uz chpwd(){ print -Pn "\e]7;file://%m${PWD}\e\\" }
    
    if [ -f "$GHOSTTY_RESOURCES_DIR/shell-integration/zsh/ghostty-integration" ]; then
    source "$GHOSTTY_RESOURCES_DIR/shell-integration/zsh/ghostty-integration"
    fi
fi

# ✅ Oh My Posh must come LAST
eval "$(starship init zsh)"
printf '\e[30m
███╗ ██████╗ ██████╗  ██████╗ ███╗   ██╗██╗████████╗██╗██╗   ██╗███████╗    ██████╗ ███████╗ █████╗ ██╗     ███╗   ███╗
██╔╝██╔════╝██╔═══██╗██╔════╝ ████╗  ██║██║╚══██╔══╝██║██║   ██║██╔════╝    ██╔══██╗██╔════╝██╔══██╗██║     ████╗ ████║
██║ ██║     ██║   ██║██║  ███╗██╔██╗ ██║██║   ██║   ██║██║   ██║█████╗      ██████╔╝█████╗  ███████║██║     ██╔████╔██║
██║ ██║     ██║   ██║██║   ██║██║╚██╗██║██║   ██║   ██║╚██╗ ██╔╝██╔══╝      ██╔══██╗██╔══╝  ██╔══██║██║     ██║╚██╔╝██║
███╗╚██████╗╚██████╔╝╚██████╔╝██║ ╚████║██║   ██║   ██║ ╚████╔╝ ███████╗    ██║  ██║███████╗██║  ██║███████╗██║ ╚═╝ ██║
╚══╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═══╝  ╚══════╝    ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝
                                                                                                                       
 █████╗  ██████╗ ██████╗███████╗███████╗███████╗        ██████╗ ██████╗  █████╗ ███╗   ██╗████████╗███████╗██████╗ ███╗
██╔══██╗██╔════╝██╔════╝██╔════╝██╔════╝██╔════╝  ██╗  ██╔════╝ ██╔══██╗██╔══██╗████╗  ██║╚══██╔══╝██╔════╝██╔══██╗╚██║
███████║██║     ██║     █████╗  ███████╗███████╗  ╚═╝  ██║  ███╗██████╔╝███████║██╔██╗ ██║   ██║   █████╗  ██║  ██║ ██║
██╔══██║██║     ██║     ██╔══╝  ╚════██║╚════██║  ██╗  ██║   ██║██╔══██╗██╔══██║██║╚██╗██║   ██║   ██╔══╝  ██║  ██║ ██║
██║  ██║╚██████╗╚██████╗███████╗███████║███████║  ╚═╝  ╚██████╔╝██║  ██║██║  ██║██║ ╚████║   ██║   ███████╗██████╔╝███║
╚═╝  ╚═╝ ╚═════╝ ╚═════╝╚══════╝╚══════╝╚══════╝        ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═════╝ ╚══╝
\e[0m\n'

alias git-init='/Users/fern/git-init-custom.sh'

 # Custom function to quickly navigate to specific directories

function elsegate() {
  case $1 in
    code)
      cd /Users/fern/code
      ;;
    term)
      cd /Users/fern/code/term
      ;;
    rust)
      cd /Users/fern/code/rust
      ;;
    dev)
      cd /Users/fern/Documents/dev
      ;;
    js)
      cd /Users/fern/code/js
      ;;
    git)
      cd /Users/fern/code/git  
      ;;
    codecademy)
      cd /Users/fern/Documents/dev/codecademy   
      ;; 
    devgit)
      cd /Users/fern/Documents/dev/git
      ;;
    term-port)
      cd /Users/fern/Documents/dev/terminal-portfolio
      ;;
      *)
        echo "avaliable elsegates: [term|rust|dev|js|codecademy|devgit|term-port]"
      ;;
      esac
    }



# Go up directories quickly
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Alias for EZA ls replacements
alias scry='eza --icons' # colorful ls
alias scry2='eza --tree --level=2' # tree view, 2 levels deep

# Replace the cat with bat functionality
alias sibling='bat --paging=never'

# Replacing some stuff with cooler shit
function soulcast() {
    touch "$@"
}

function awaken() {
    mkdir "$@"
}

function worldhop() {
    cd "$@"
}

function shatter() {
    rm "$@"
}

function aon() {
    nano "$@"
}

# Change to home directory when opening new tabs in Ghostty
if [ -n "$GHOSTTY_RESOURCES_DIR" ]; then
    # Chek if this is a new tab (not a new window or initial startup)
    if [ "$SHLVL" = "1" ] && [ "$PWD" != "$HOME" ]; then
        cd "$HOME"
    fi
fi

export CLICOLOR=1
export TAVILY_API_KEY="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"

# bun completions
[ -s "/Users/fern/.bun/_bun" ] && source "/Users/fern/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by CodeRabbit CLI installer
export PATH="/Users/fern/.local/bin:$PATH"
