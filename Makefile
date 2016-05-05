all:
	@echo 'b: basic_git_concepts'
	@echo 'd: diffs'
	@echo 'm: merges'
	@echo 'a1: altering_commits'

b:
	@./basic_git_concepts.sh

d:
	@./diffs.sh

m:
	@./merges.sh

a1:
	@./altering_commits.sh

clean:
	-rm -rf hello diff_example conflict reset
