all: stx idt
	@echo "Done"
stx: syntax/kuin.vim
	@cp syntax/kuin.vim ~/.vim/syntax/kuin.vim
	@echo "syntax: done"
idt: indent/kuin.vim
	@cp indent/kuin.vim ~/.vim/indent/kuin.vim
	@echo "indent: done"

.PHONY: all stx idt
