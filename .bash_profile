echo "Start1"

## for using homebrew, specifically with python
# https://hackercodex.com/guide/mac-osx-mavericks-10.9-configuration/
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH=/usr/local/mysql/bin:/usr/local/share/python:$PATH:~/bin
# gnu ls, etc., as per https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
# the below was taking too long.
# export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
# Find libraries. Specifically, cs50.
export LIBRARY_PATH=/usr/local/lib
export C_INCLUDE_PATH=/usr/local/include

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# safety
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# directories and nav
alias p="pwd"
alias ..="cd .."
alias ...="cd ../.."
alias cdme="cd ~/Drive/"
alias cdYale="cd ~/Drive/Yale/4/spring"
alias cd50="cd ~/Drive/CS50/1-summer50/"
alias cdref="cd ~/Dropbox/Reference\ Sheets/reference\ sheets\ to\ proof"
alias cdSMP="cd /Users/dproctor15/Drive/Yale/3/spring/SMP"
trash(){
    mv -i "$@" ~/.Trash 
}

# listing
alias ll='ls -l'
alias la='ls -la'
alias ls='ls -Gp'
alias l='ls'


alias less="less -R "

alias c='clear'

# python
alias py='python'
alias py3='python3'

# git
alias gi="git init"
alias ga="git add"
alias gac="git add *.c"
alias gapy="git add *.py; git add *.ipynb"
alias gc="git commit -m"
alias gcam="git commit -a -m"
alias gl="git log"
alias glone="git log --oneline"
alias glogfile="git log --format=\"%h %ar %s\""
alias gs="git status -uno"
alias gb="git branch"
alias gd="git diff"
alias gpull="git pull origin master"
alias gpush="git push origin master"
alias gls="git ls-tree -r master --name-only"

## Yale nodes
export ZOO="dwp7@node.zoo.cs.yale.edu"
export MACAW="dwp7@macaw.zoo.cs.yale.edu"
export FROG="dwp7@frog.zoo.cs.yale.edu"
export LOCAL="localhost:8889:localhost:8889"
export TANGRA="dwp7@tangra.cs.yale.edu"

alias macawssh="ssh -X -Y $MACAW" 
# -L: create forwarding of port on a remote server
alias jupssh="ssh -L $LOCAL"

# sublime text
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# prompt config in which we just get the current dir. see http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
export PS1='\W$ '

## editor
# alias vim='mvim -v'
alias vim='nvim'
# alias vi='vim'
export EDITOR=vim

# fzf wrappers
# cdf - cd into the directory of the selected file
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}
cdF() {
    cdme
    cdf
}
cdY() {
    cdYale
    cdf
}
cdp() {
    cd $1
    cdf
}
# fh - repeat history
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
fh1() {
    history | fzf
}

## C
export CC=clang
#export CFLAGS="-g3 -std=c99 -Wall -Werror -Wextra -Wno-sign-compare -Wshadow -ggdb -fsanitize=integer -fsanitize=undefined -O0"
export LDLIBS="-lcs50 -lm -lncurses"

## Python
# for virtual environment for python w cs50 per Kareem.
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# https://gist.github.com/apavamontri/4516816
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh
# Working with ipykernel, per https://anbasile.github.io/programming/2017/06/25/jupyter-venv/
ipySetup() {
    if [ $# -eq 0 ]
    then
        echo "Usage: be in (venv) and pass in projectname, please"
    else
        pip install ipykernel
        ipython kernel install --user --name=$1
    fi
}

# python modules
export PYTHONPATH="${PYTHONPATH}:~/pylibs:/Users/daveyproctor/Library/Python/3.7/bin"
# classes
# AI
#export PYTHONPATH="${PYTHONPATH}:~/Drive/Yale/3/fall/AI/aima"

# TF
alias tboard='tensorboard --logdir=.'

echo "done"








# SCRAP
# echo "hi"
# refdone(){
#     cp -i "$@" ~/Dropbox/Reference\ Sheets/reference\ sheets\ to\ proof/
#     ls ~/Dropbox/Reference\ Sheets/reference\ sheets\ to\ proof/
# }
# # CS50 psets
# export FLASK_APP=application.py
# # for google maps(?)
# # export API_KEY=AIzaSyA6Aj03vYnU71D7280pBpbIRgTKdgiq2_E
# # Twitter Sentiments, https://apps.twitter.com/app/14129486/keys
# export API_KEY=qAqfBJ5eMD1NmPASVWitg7kad
# export API_SECRET=qmcXrpxweCMxOnuOi0OtsFPnIJtT9Q7EwSFc9rxrn200G3FrJT
# 
# ## open apps
# # Skim
# alias skim='open -a Skim.app'
# 
# # astro 255
# alias ipy="ipython --pylab"
alias jup="jupyter notebook"
# 
# # scp
# alias scp_help="echo \'scp trial_scoop dwp7@node.zoo.cs.yale.edu:~/cs223 OR TO COPY: scp dwp7@node.zoo.cs.yale.edu:~/cs223/my_file .\'"
# 
# # valgrind
# alias val="valgrind"

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/dproctor15/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/dproctor15/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/dproctor15/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/dproctor15/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<
. /usr/local/anaconda3/etc/profile.d/conda.sh
