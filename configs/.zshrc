# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pixegami-agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Định nghĩa các mã màu cho terminal
COLORS=(
  "%F{red}"     # Màu đỏ
  "%F{green}"   # Màu xanh lá
  "%F{yellow}"  # Màu vàng
  "%F{blue}"    # Màu xanh dương
  "%F{magenta}" # Màu tím
  "%F{cyan}"    # Màu xanh lơ
)

# Chọn màu ngẫu nhiên từ mảng COLORS
RANDOM_COLOR=${COLORS[$RANDOM % ${#COLORS[@]}]}

# Đặt prompt với màu ngẫu nhiên
#PROMPT="${RANDOM_COLOR}%n@%m:%~%f%# "


# Định nghĩa các mã màu nền toàn bộ terminal (mã điều khiển ANSI)
BACKGROUND_COLORS=(
  "\033]11;#35454A\007"  # Xanh dương nhạt
  "\033]11;#2c452C\007"  # Xanh lá nhạt
  "\033]11;#787349\007"  # Vàng nhạt
  "\033]11;#735757\007"  # Xám nhạt
  "\033]11;#45457a\007"  # Tím lavender
  "\033]11;#7a4750\007"  # Hồng nhạt
  "\033]11;#396e6e\007"  # Xanh lơ nhạt
)

# Chọn màu nền ngẫu nhiên từ mảng BACKGROUND_COLORS
RANDOM_BG=${BACKGROUND_COLORS[$RANDOM % ${#BACKGROUND_COLORS[@]}]}

# Áp dụng màu nền
print -n "$RANDOM_BG"


