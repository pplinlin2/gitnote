#!/bin/bash
source util.sh
init amend

msg "[Changing the Top Commit]"
msg "from: A - B - C"
msg "to:   A - B - C'"
cmd "echo 'The time has come.' > mark.txt"
cmd "git add mark.txt"
cmd "git commit -m 'Mark 2:17'"
cmd "git show-branch --more=5"
cmd "git show"

cmd "echo 'The kingdom of God has come near. Repent and believe the good news!' >> mark.txt"
cmd "git add mark.txt"
cmd "git commit --amend -m 'Full Mark 2:17'"
cmd "git show-branch --more=5"
cmd "git show"
