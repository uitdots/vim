default: install

vim-plug-url := 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

install:
  curl -C - -fLo ./autoload/plug.vim --create-dirs {{ vim-plug-url }}
  just copy-config

[unix]
copy-config:
  if [ ! -f ~/.ideavimrc ]; then \
    ln -s '{{invocation_directory()}}/ideavimrc' ~/.ideavimrc; \
  fi

# TODO: Maybe check the endline char ^
[windows]
copy-config:
  IF NOT EXIST "%USERPROFILE%\.ideavimrc" ( \
    mklink "%USERPROFILE%\.ideavimrc" "%CD%\ideavimrc" \
  )

update-vim-plug:
  curl -fLo ./autoload/plug.vim --create-dirs {{ vim-plug-url }}
