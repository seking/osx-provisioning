brew install pyenv-virtualenv
cat >>~/.zshrc.local <<'EOT'
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOT
exec $SHELL
pyenv install 3.5.0
pyenv global 3.5.0
