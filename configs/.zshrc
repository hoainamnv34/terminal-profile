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
  "%F{#7a99de}"   # Màu xanh dương nhạt
  "%F{#f9d342}"   # Màu vàng đậm
  "%F{#bd4428}"   # Màu đỏ đất
  "%F{#f52549}"   # Màu đỏ tươi
  "%F{#9bc01c}"   # Màu xanh lá nhạt
  "%F{#f7efe2}"   # Màu kem nhạt
)

# Định nghĩa các mã màu nền toàn bộ terminal (mã điều khiển ANSI)
# BACKGROUND_COLORS=(
#   "\033]11;#292826\007"  # Màu đỏ nhạt
#   "\033]11;#292826\007"  # Màu xám đậm .
#   "\033]11;#292826\007"  # Màu hồng nhạt
#   "\033]11;#292826\007"  # Màu xanh đậm v
#   "\033]11;#292826\007"  # Màu xanh đậm v
#   "\033]11;#292826\007"  # Màu xanh xám tối
#   "\033]11;#292826\007"  # Màu xanh xám tối
# )

# Lưu trữ chỉ mục hiện tại trong tệp để duy trì trạng thái giữa các phiên
INDEX_FILE="$HOME/.zsh_color_index"

# Đọc chỉ mục từ tệp, nếu không tồn tại thì bắt đầu từ 0
if [ -f "$INDEX_FILE" ]; then
  index=$(cat "$INDEX_FILE")
else
  index=1
fi

# Lấy màu prompt và màu nền từ chỉ mục hiện tại
RANDOM_COLOR=${COLORS[$index+1]}
# RANDOM_BG=${BACKGROUND_COLORS[$index]}

# Đặt màu riêng cho đường dẫn (path)
PATH_COLOR="%F{yellow}" # Màu vàng cố định cho đường dẫn

# Đặt prompt với màu theo thứ tự cho tên người dùng và màu cố định cho đường dẫn
PROMPT="${RANDOM_COLOR}%n@%m:${PATH_COLOR}%~%f%# "

# Áp dụng màu nền
# print -n "$RANDOM_BG"

# Tăng chỉ mục và đặt lại về 0 nếu vượt quá số lượng màu
index=$(( (index + 1) % ${#COLORS[@]} ))

# Lưu chỉ mục hiện tại vào tệp để sử dụng cho lần sau
echo $index > "$INDEX_FILE"