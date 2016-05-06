#!/bin/bash
source util.sh
init patch

DATE="GIT_AUTHOR_DATE='1970-01-01 00:00' GIT_COMMITTER_DATE='1970-01-01 00:01'"

cmd "echo 'A' > file"
cmd "git add file"
cmd "${DATE} git commit -mA"
cmd "echo 'B' >> file; ${DATE} git commit -mB file"
cmd "echo 'C' >> file; git commit -mC file"
cmd "echo 'D' >> file; git commit -mD file"
cmd "git show-branch --more=4"
cmd "git format-patch -3"
cmd "cat 0002-C.patch"

cmd "git checkout -b alt 197cf"
cmd "echo 'X' >> file2"
cmd "git add file2"
cmd "git commit -mX"
cmd "echo 'Y' >> file2; git commit -mY file2"
cmd "echo 'Z' >> file2; git commit -mZ file2"

cmd "git checkout master"
cmd "git merge alt -mE"
cmd "echo 'F' >> file; git commit -mF file"
cmd "git log --graph --oneline --decorate --branches"
cmd "git show-branch --more=10"
cmd "git format-patch master~3"
