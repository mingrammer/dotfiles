# Path to your oh-my-zsh installation.
export ZSH=/Users/ming/.oh-my-zsh

# ZSH_THEME="bullet-train/bullet-train"
ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

# User configuration
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/go/bin:/usr/local/mysql/bin:/usr/local/mysql/bin:/usr/local/opt/python/libexec/bin:/Users/ming/go/bin:/Users/ming/Desktop/Programming/go/bin:/Users/ming/Desktop/Development/proj-go/bin:$PATH"

# PostgreSQL
export PGDATA="${HOME}/postgres"

export EDITOR="/usr/bin/vim"

source $ZSH/oh-my-zsh.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Locale
export LC_ALL=ko_KR.UTF-8
export LANG=ko_KR.UTF-8

# POWERLEVEL9K 
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="⎾ "
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="⎿  "
POWERLEVEL9K_MODE="awesome-patched"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon docker_machine aws pyenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(load ram_joined time)

# Shorten
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# OS Icon
POWERLEVEL9K_OS_ICON_BACKGROUND="black"
POWERLEVEL9K_OS_ICON_FOREGROUND="whute"

# Docker machine
POWERLEVEL9K_DOCKER_MACHINE_FOREGROUND="red"
POWERLEVEL9K_DOCKER_MACHINE_BACKGROUND="black"

# Pyenv
POWERLEVEL9K_PYENV_FOREGROUND="magenta"
POWERLEVEL9K_PYENV_BACKGROUND="black"

# Go
POWERLEVEL9K_GO_VERSION_FOREGROUND="black"
POWERLEVEL9k_GO_VERSION_BACKGROUND="black"

# Customizing `context` colors for root and non-root users
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"

# Dir color customization
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="blue"

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_FOREGROUND="green"
POWERLEVEL9K_VCS_DARK_FOREGROUND="blue"
POWERLEVEL9K_VCS_BACKGROUND="black"

POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="red"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="black"

# Load
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"

# Ram
POWERLEVEL9K_RAM_FOREGROUND="yellow"
POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)

# Time color customization
POWERLEVEL9K_TIME_FOREGROUND="red"
POWERLEVEL9K_TIME_BACKGROUND="black"

POWERLEVEL9K_MODE='compatible'

# Bullet train
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

# go
BULLETTRAIN_GO_SHOW="true"

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# autoenv
source /usr/local/opt/autoenv/activate.sh

# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# CUDA
export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"

export NVM_DIR="/Users/ming/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
