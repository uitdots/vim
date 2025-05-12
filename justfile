default: install

install:
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  just copy-config

[unix]
copy-config:
  if [ ! -f ~/.ideavimrc ]; then \
    ln -s ./ideavimrc ~/.ideavimrc; \
  fi

[windows]
copy-config:
  # TODO later
