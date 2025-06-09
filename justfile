default: install

vim-plug-url := 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
entrypoints := 'vimrc ideavimrc'

install:
  curl -C - -fLo ./autoload/plug.vim --create-dirs {{ vim-plug-url }}
  just copy-config

[unix]
copy-config:
  for entrypoint in {{ entrypoints }}; do \
    if [ ! -f "$HOME/.$entrypoint" ]; then \
      ln -s "{{invocation_directory()}}/$entrypoint" "$HOME/.$entrypoint"; \
    fi \
  done

# TODO: Maybe check the endline char ^
[windows]
copy-config:
  FOR %%F IN ({{ entrypoints }}) do ( \
    IF NOT EXIST "%USERPROFILE%\.%%F" ( \
      mklink "%USERPROFILE%\.%%F" "%CD%\%%F" \
    ) \
  )

update-vim-plug:
  curl -fLo ./autoload/plug.vim --create-dirs {{ vim-plug-url }}
