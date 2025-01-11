# ...existing code...

# Function to get the current git branch
parse_git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

# Update PS1 to include the git branch inside the first bracket
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[\033[01;31m\]($(parse_git_branch))\[\033[00m\]\$ '

# ...existing code...