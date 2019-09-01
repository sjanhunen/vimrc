.PHONY: install

ifeq ($(shell uname),Darwin)
VS_CODE_DIR=~/Library/Application\ Support/Code/User/
endif

VIM_RC = ~/.vimrc
VIM_DIR = ~/.vim/.touch
TMUX_CONF = ~/.tmux.conf
VS_CODE_BINDINGS = $(addprefix $(VS_CODE_DIR), keybindings.json)

install: $(VIM_RC) $(VIM_DIR) $(TMUX_CONF) $(VS_CODE_BINDINGS)

$(VIM_RC): vim/vimrc
	cp $^ $@

$(TMUX_CONF): tmux/tmux.conf
	cp $^ $@

$(VIM_DIR): ./vim
	mkdir -p $(dir $@)
	cp -r $^/* $(dir $@)
	touch $@

ifneq ($(VS_CODE_BINDINGS),)
$(VS_CODE_BINDINGS): vscode/keybindings.json
	cp $^ "$@"
endif