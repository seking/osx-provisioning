brew install pyenv-virtualenv
setup_command=$(cat <<'EOT'
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOT
)
echo $setup_command >> ~/.zshrc.local
$setup_command
pyenv install 3.5.0
pyenv global 3.5.0
