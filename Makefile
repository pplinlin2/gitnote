all:
	@echo 'b: basic_git_concepts'
	@echo 'd: diffs'

b:
	@./basic_git_concepts.sh

d:
	@./diffs.sh

clean:
	-rm -rf hello diff_example
