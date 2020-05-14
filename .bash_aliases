alias artisan='php artisan'
alias phpunit='vendor/bin/phpunit'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias svndiff='svn diff "$*" | colordiff'
alias codecept='vendor/bin/codecept'
alias phpspec='vendor/bin/phpspec'
alias behat='vendor/bin/behat'
alias git-diff-lines='GIT_EXTERNAL_DIFF=~/bin/diff_ln.sh git diff'
alias phinx='vendor/bin/phinx'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias fixssh='eval $(tmux showenv -s SSH_AUTH_SOCK)'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

_git_log_fuller_format='%C(bold yellow)commit %H%C(auto)%d%n%C(bold)Author: %C(blue)%an <%ae> %C(no-bold cyan)%ai (%ar)%n%C(bold)Commit: %C(blue)%cn <%ce> %C(no-bold cyan)%ci (%cr)%C(reset)%n%+B'
_git_log_oneline_medium_format='%C(bold yellow)%h%C(reset) %<(50,trunc)%s %C(bold blue)<%an> %C(no-bold cyan)(%ar)%C(auto)%d%C(reset)'
gprefix=g

alias ${gprefix}lG='git log --graph --pretty=format:"${_git_log_oneline_medium_format}"'
