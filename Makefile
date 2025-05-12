# This file is converted form justfile by AI. I don't know to to create Makefile
.PHONY: install copy-config copy-config-unix copy-config-windows

install:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	$(MAKE) copy-config

copy-config: copy-config-unix

copy-config-unix:
	@if [ ! -f ~/.ideavimrc ]; then \
		ln -s ./ideavimrc ~/.ideavimrc; \
	fi

copy-config-windows:
	@echo "Windows configuration is not yet implemented."
