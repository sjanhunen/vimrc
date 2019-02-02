.PHONY: install

VIM_RC = ~/.vimrc
VIM_DIR = ~/.vim/.touch
TMUX_CONF = ~/.tmux.conf

install: $(VIM_RC) $(VIM_DIR) $(TMUX_CONF)

$(VIM_RC): vim/vimrc
	cp $^ $@

$(TMUX_CONF): tmux/tmux.conf
	cp $^ $@

$(VIM_DIR): ./vim
	mkdir -p $(dir $@)
	cp -r $^/* $(dir $@)
	touch $@
