.PHONY: install

VIM_RC = ~/.vimrc
VIM_COLORS = ~/.vim/colors
TMUX_CONF = ~/.tmux.conf

install: $(VIM_RC) $(TMUX_CONF) $(VIM_COLORS)/zenburn.vim

$(VIM_RC): vimrc
	cp $^ $@

$(TMUX_CONF): tmux.conf
	cp $^ $@

$(VIM_COLORS):
	mkdir -p $@

$(VIM_COLORS)/%: colors/% | $(VIM_COLORS)
	cp $^ $@
