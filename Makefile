all:
	@echo 'b: basic_git_concepts'
	@echo 'd: diffs'
	@echo 'm: merges'

b:
	@./basic_git_concepts.sh

d:
	@./diffs.sh

m:
	@./merges.sh

clean:
	-rm -rf hello diff_example conflict
