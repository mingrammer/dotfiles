# Default PATH
export PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/bin

# Register linux cross compiler
export PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/bin

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Basic configuration
export EDITOR="/usr/local/bin/vim"

## Locale
export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8

## SSH
export SSH_KEY_PATH="~/.ssh/id_rsa"

## Compilation flags
export ARCHFLAGS="-arch x86_64"

# ZSH configuration
export ZSH=/Users/ming/.oh-my-zsh

ENABLE_CORRECTION="true"
HIST_STAMPS="yyyy-mm-dd"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

## ZSH plugins
plugins=(git zsh-syntax-highlighting)

## ZSH theme
ZSH_THEME="powerlevel9k/powerlevel9k"

## POWERLEVEL9K
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="⎾ "
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="⎿  "
POWERLEVEL9K_MODE="awesome-patched"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon docker_machine aws virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(load ram_joined time)

### Shorten
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

### OS Icon
POWERLEVEL9K_OS_ICON_BACKGROUND="black"
POWERLEVEL9K_OS_ICON_FOREGROUND="whute"

### Docker machine
POWERLEVEL9K_DOCKER_MACHINE_FOREGROUND="red"
POWERLEVEL9K_DOCKER_MACHINE_BACKGROUND="black"

### Pyenv
POWERLEVEL9K_PYENV_FOREGROUND="magenta"
POWERLEVEL9K_PYENV_BACKGROUND="black"

### Go
POWERLEVEL9K_GO_VERSION_FOREGROUND="black"
POWERLEVEL9k_GO_VERSION_BACKGROUND="black"

### Customizing `context` colors for root and non-root users
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"

### Dir color customization
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="blue"

### Advanced `vcs` color customization
POWERLEVEL9K_VCS_FOREGROUND="green"
POWERLEVEL9K_VCS_DARK_FOREGROUND="blue"
POWERLEVEL9K_VCS_BACKGROUND="black"

POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="red"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="black"

### Load
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

### Ram
POWERLEVEL9K_RAM_FOREGROUND="yellow"
POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)

### Time color customization
POWERLEVEL9K_TIME_FOREGROUND="red"
POWERLEVEL9K_TIME_BACKGROUND="black"

POWERLEVEL9K_MODE='compatible'

### Bullet train
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    custom
    context
    dir
    virtualenv
    go
    git
    cmd_exec_time
)

source $ZSH/oh-my-zsh.sh

# Alias
alias awesome="awesome-hub"
alias ofb="open https://facebook.com"
alias ogg="open https://google.com"
alias ogh="open https:/github.com"
alias vi="vim"
alias exa="exa --header --long --git"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# PHP7
export PATH="/usr/local/opt/php@7.0/sbin:$PATH"
export PATH="/usr/local/opt/php@7.0/bin:$PATH"

# Github token
GITHUB_TOKEN=

# PostgreSQL
export PGDATA="${HOME}/postgres"

# Pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Autoenv
source /usr/local/opt/autoenv/activate.sh

# Direnv
eval "$(direnv hook zsh)"

# Rbenv
export PATH="$PATH:$HOME/.rbenv/shims:$HOME/.rvm/bin"

# CUDA
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"

# Localstack
export DEFAULT_REGION="ap-northeast-2"
export SERVICES="firehose,s3,es"

# Shiori
ENV_SHIORI_DB=$HOME/.shiori.db
