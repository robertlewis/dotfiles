# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/robert/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy.mm.dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#kube aliases
alias k=kubectl
alias kgc="kubectl config get-contexts"

#fs aliases
alias lsa="ls -la" #shortcut to list files formatted
alias r="cd /p/.r" #shortcut to navigate to root repo directory
alias dld="cd /c/Users/Robert/Downloads" #shortcut to navigate to downloads folder
alias cls="clear" #shortcut to clear command

#docker aliases
alias d="docker"
alias dps="docker ps"

source=/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### VISUAL CUSTOMIZATION ###
DEFAULT_USER=robert
P9K_BLACK=0
P9K_TEXT=231
P9K_LIGHT=015
P9K_RED=197
P9K_GREEN=082
P9K_YELLOW=226
P9K_BLUE=033

# Left Options
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
# Right Options
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# Add second prompt line for command
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Custom Visual of Second Line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{$P9K_BLACK}%K{$P9K_YELLOW}%} $user_symbol%{%b%f%k%F{$P9K_YELLOW}%} %{%f%}"

# Add new line after global prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT="%D{\uf073 %Y.%m.%d \uf017 %I:%M:%p}"
POWERLEVEL9K_TIME_ICON=""

#CONTEXT FORMAT
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=$P9K_YELLOW
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=$P9K_YELLOW
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND=$P9K_YELLOW
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND=$P9K_YELLOW
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND=$P9K_YELLOW
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=$P9K_TEXT
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=$P9K_TEXT
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND=$P9K_TEXT
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND=$P9K_TEXT
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND=$P9K_TEXT

#DIR FORMAT
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=$P9K_LIGHT
POWERLEVEL9K_DIR_HOME_FOREGROUND=$P9K_LIGHT
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$P9K_LIGHT
POWERLEVEL9K_DIR_ETC_FOREGROUND=$P9K_LIGHT
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$P9K_BLUE
POWERLEVEL9K_DIR_HOME_BACKGROUND=$P9K_BLUE
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$P9K_BLUE
POWERLEVEL9K_DIR_ETC_BACKGROUND=$P9K_BLUE

#VCS FORMAT
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=$P9K_BLACK
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=$P9K_LIGHT
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND=$P9K_LIGHT
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=$P9K_BLACK
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$P9K_GREEN
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$P9K_RED
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=$P9K_RED
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$P9K_GREEN