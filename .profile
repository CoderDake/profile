#!/bin/bash

note() {
	osascript -e "display notification \"$1\""
}

gsquash () {
  if [ -z ${1+x} ]; then
    echo "ERROR: You must pass a base branch"
    return
  fi
  git reset $(git merge-base $1 $(git branch --show-current)) 
}

alias gmom="git mom"
alias gfom="git fom"
alias gfmom="gfom; gmom"
alias grhom="git reset --hard origin/master"
alias gmum="git merge upstream/master"
alias gfum="git fetch upstream master"
alias gfmum="gfum; gmum"
alias grhum="git reset --hard upstream/master"
alias rmft='rm ~/develop/flutter/bin/cache/flutter_tools.stamp ~/develop/flutter/bin/cache/flutter_tools.snapshot'

