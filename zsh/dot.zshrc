RPROMPT=$(echo '%{\033[31m%}%D %T%{\033[m%}')
PROMPT=$(echo  '%{\033[32m%}%M %{\033[32m%}%/
%{\033[36m%}%n%{\033[01;33m%} # %{\033[m%}')

# 设置dircolors，mac中需安装coreutils
# brew install coreutils
# https://github.com/seebi/dircolors-solarized.git
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
eval $(dircolors /Users/kayang/git/github/dircolors-solarized/dircolors.ansi-universal)

for zshrc_snipplet in ~/.zsh.d/S[0-9][0-9]*[^~]; do
    source $zshrc_snipplet
done

# 常用
alias vim='nvim'
alias vimf='vim ${/opt/homebrew/bin/fzf}'

# python3.9
export PATH=/opt/homebrew/anaconda3/bin:$PATH

# mac中禁止对包进行自动升级和清理
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1
