all: syntax/kuin.vim
	@cp syntax/kuin.vim ~/.vim/syntax/kuin.vim
	@cp indent/kuin.vim ~/.vim/indent/kuin.vim
	@echo "Done"

.PHONY: all
