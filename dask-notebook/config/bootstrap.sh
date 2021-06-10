cp -r /home/jupyter/.jupyter /home/$NB_UID/.jupyter

cat <<EOF > .bashrc
install_env() {
  set -e
  echo "Installing shallow virtual environment in \$PWD/.env..."
  python -m venv --without-pip --system-site-packages .env
  unlink .env/lib64  # HTCondor can't transfer symlink to directory and it appears optional
  # work around issues copying CVMFS xattr when copying to tmpdir
  export TMPDIR=\$(mktemp -d -p .)
  rm -rf \$TMPDIR && unset TMPDIR
  .env/bin/python -m pip install -q git+https://github.com/CoffeaTeam/lpcjobqueue.git@v0.2.3
  echo "done."
}

[[ -d .env ]] || install_env
source .env/bin/activate
alias pip="python -m pip"
EOF

wget -O /etc/dask/lpcjobqueue.yaml https://raw.githubusercontent.com/CoffeaTeam/lpcjobqueue/main/src/lpcjobqueue/config.yaml
