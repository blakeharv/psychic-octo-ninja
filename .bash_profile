# LINKS
# http://stackoverflow.com/questions/9869227/git-autocomplete-in-bash-aliases
# http://adit.io/posts/2013-08-16-five-useful-git-tips.html
# http://net.tutsplus.com/tutorials/tools-and-tips/how-to-customize-your-command-prompt/

# Add Git Branch completion
source $HOME/.bin/.git-completion.bash

__git_complete g __git_main
__git_complete gco _git_checkout
__git_complete gm __git_merge
__git_complete gp _git_pull

# Colors
txtblk='\e[0;30m' # Black - Regular  
txtred='\e[0;31m' # Red  
txtgrn='\e[0;32m' # Green  
txtylw='\e[0;33m' # Yellow  
txtblu='\e[0;34m' # Blue  
txtpur='\e[0;35m' # Purple  
txtcyn='\e[0;36m' # Cyan  
txtwht='\e[0;37m' # White  
bldblk='\e[1;30m' # Black - Bold  
bldred='\e[1;31m' # Red  
bldgrn='\e[1;32m' # Green  
bldylw='\e[1;33m' # Yellow  
bldblu='\e[1;34m' # Blue  
bldpur='\e[1;35m' # Purple  
bldcyn='\e[1;36m' # Cyan  
bldwht='\e[1;37m' # White  
unkblk='\e[4;30m' # Black - Underline  
undred='\e[4;31m' # Red  
undgrn='\e[4;32m' # Green  
undylw='\e[4;33m' # Yellow  
undblu='\e[4;34m' # Blue  
undpur='\e[4;35m' # Purple  
undcyn='\e[4;36m' # Cyan  
undwht='\e[4;37m' # White  
bakblk='\e[40m'   # Black - Background  
bakred='\e[41m'   # Red  
badgrn='\e[42m'   # Green  
bakylw='\e[43m'   # Yellow  
bakblu='\e[44m'   # Blue  
bakpur='\e[45m'   # Purple  
bakcyn='\e[46m'   # Cyan  
bakwht='\e[47m'   # White  
txtrst='\e[0m'    # Text Reset


alias be="bundle exec"
alias r="bundle exec rails server"
alias rc="bundle exec rails console"



# Nathan Sullin's Git completions
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gb="git branch"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gm="git merge"
alias gr="git rebase"
alias gl="git log"
alias gsh="git show"
alias gd="git diff"
alias gbl="git blame"
alias gps="git push"
alias gpl="git pull"
alias gf="git fetch"
alias gfo="git fetch origin"
alias glo="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gcl="git clean -f -d"
alias grh="git reset --hard"
alias grs="git reset --soft"

print_before_the_prompt () {  
    printf "\n$txtcyn%s: $txtgrn%s $txtpur%s\n$txtrst" "$USER" "$PWD" "$(vcprompt)"  
}  
  
PROMPT_COMMAND=print_before_the_prompt  
PS1='->'
