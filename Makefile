all:
	@echo 'b: basic_git_concepts'
	@echo 'd: diffs'
	@echo 'm: merges'
	@echo 'a1: altering_commits'
	@echo 'a2: amend'
	@echo 'a3: rebase'
	@echo 'p: patches'

b:
	@./basic_git_concepts.sh

d:
	@./diffs.sh

m:
	@./merges.sh

a1:
	@./altering_commits.sh
a2:
	@./amend.sh
a3:
	@./rebase.sh

p:
	@./patches.sh

clean:
	-rm -rf hello diff_example conflict reset amend rebase patch
