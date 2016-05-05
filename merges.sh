#!/bin/bash
source util.sh

cmd "mkdir conflict"
cmd "cd conflict"
cmd "git init"
git config user.name "Alice"
git config user.email "alice@qoo.con"

msg "[Merging Two Branches]"
cat > file << EOF
Line 1 stuff
Line 2 stuff
Line 3 stuff
EOF
cmd "cat file"
cmd "git add file"
cmd "git commit -m 'Initial 3 line file'"

cat > other_file << EOF
Here is stuff on another file!
EOF
cmd "cat other_file"
cmd "git add other_file"
cmd "git commit -m 'Another file'"

cmd "git checkout -b alternate master^"
cmd "git show-branch"
cat >> file << EOF
Line 4 alternate stuff
EOF
cmd "git commit -a -m 'Add alternate line 4'"

cmd "git checkout master"
cmd "git status"
cmd "git merge alternate -m 'Merge branch alternate'"
cmd "git log --graph --pretty=oneline --abbrev-commit"
