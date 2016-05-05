#!/bin/bash
source util.sh

function flow_d(){
	msg "Working dir.: A B B C C"
	msg "Index:        A A B B B"
	msg "Object store: A A A A B"
}

cmd "mkdir diff_example"
cmd "cd diff_example"
cmd "git init"
git config user.name "Alice"
git config user.email "alice@qoo.con"

msg "[Simple git diff Example]"
cmd "echo 'foo' > file1"
cmd "echo 'bar' > file2"

msg "              *"
flow_d
cmd "git add file1 file2"
cmd "git commit -m 'Add file1 and file2'"

msg "                *"
flow_d
cmd "echo 'quux' > file1"
cmd "git diff"
cmd "git diff HEAD"
cmd "git diff --cached"

msg "                  *"
flow_d
cmd "git add file1"
cmd "git status"
cmd "git diff"
cmd "git diff HEAD"
cmd "git diff --cached"

msg "                    *"
flow_d
cmd "echo 'baz' > file1"
cmd "git diff"
cmd "git diff HEAD"
cmd "git diff --cached"

msg "                      *"
flow_d
cmd "git commit -m 'quux will be commited'"
cmd "git diff HEAD^ HEAD"
cmd "git diff"
