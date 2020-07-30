#!/bin/bash

initializer(){
  sudo apt-get update
  sudo apt-get install -y curl git
}

update_bash(){
  git_complete="https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash"
  sudo curl $git_complete -o /etc/bash_completion.d/git-completion.bash

  cp -b bash/bash_aliases ~/.bash_aliases
  #to fix your line endings
  sed -i 's/\r//' ~/.bash_aliases
}

run_all(){
  initializer
  update_bash
}
