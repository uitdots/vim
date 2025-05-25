# This file is converted form justfile by AI. I don't know to to create Makefile

# Default target
.PHONY: default
default: install

# Variable
VIM_PLUG_URL = https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install target
.PHONY: install
install:
	curl -C - -fLo ./autoload/plug.vim --create-dirs $(VIM_PLUG_URL)
	$(MAKE) copy-config

# Copy config based on OS
.PHONY: copy-config
copy-config:
ifeq ($(OS),Windows_NT)
	IF NOT EXIST "$(USERPROFILE)\.ideavimrc" ( ^
	  mklink "$(USERPROFILE)\.ideavimrc" "%CD%\ideavimrc" ^
	)
else
	if [ ! -f $$HOME/.ideavimrc ]; then \
	  ln -s "$(CURDIR)/ideavimrc" $$HOME/.ideavimrc; \
	fi
endif

# Update vim-plug
.PHONY: update-vim-plug
update-vim-plug:
	curl -fLo ./autoload/plug.vim --create-dirs $(VIM_PLUG_URL)
