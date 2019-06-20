autoload colors
colors
PROMPT=$'%{\e[38;5;34m%}%n@%m: %{\e[38;5;32m%}%~ %{\e[m%}%(!.#.$) '

# シンプルな zshrc
# License : MIT
# http://mollifier.mit-license.org/

# SSHで接続した先で日本語が使えるようにする
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# 環境変数
export LANG=ja_JP.UTF-8

# 補完機能を有効にする
autoload -Uz compinit
compinit

# 大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# cd したら自動的にpushdする
setopt auto_pushd

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# 履歴の数と共有
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# emacs 風キーバインドにする
bindkey -e

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
setopt no_beep

# フローコントロールを無効にする
setopt no_flow_control

# Ctrl+Dでzshを終了しない
setopt ignore_eof

# '#' 以降をコメントとして扱う
setopt interactive_comments

# vim:set ft=zsh :