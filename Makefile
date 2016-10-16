.PHONY: install

VIM_RC = ~/.vimrc
VIM_COLORS = ~/.vim/colors

install: $(VIM_RC) $(VIM_COLORS)/zenburn.vim

$(VIM_RC): vimrc
	cp $^ $@

$(VIM_COLORS):
	mkdir -p $@

$(VIM_COLORS)/%: colors/% | $(VIM_COLORS)
	cp $^ $@
