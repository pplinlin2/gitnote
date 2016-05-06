#!/bin/bash
source util.sh
init rebase

echo 'A' >> file1
git add file1
silent "git commit -m 'A'"
echo 'B' >> file1
silent "git commit -am 'B'"

silent "git checkout -b topic"
echo 'W' >> file2
git add file2
silent "git commit -m 'W'"
echo 'X' >> file2
silent "git commit -am 'X'"
echo 'Y' >> file2
silent "git commit -am 'Y'"
echo 'Z' >> file2
silent "git commit -am 'Z'"

silent "git checkout master"
echo 'C' >> file1
silent "git commit -am 'C'"
echo 'D' >> file1
silent "git commit -am 'D'"
echo 'E' >> file1
silent "git commit -am 'E'"

cmd "git log --graph --oneline --decorate --branches"
cmd "git checkout topic"
cmd "git rebase master"
cmd "git log --graph --oneline --decorate --branches"
