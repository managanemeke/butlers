#!/data/data/com.termux/files/usr/bin/bash
butlers="butlers"

rm -rf "${butlers}"
git clone \
  "https://github.com/managanemeke/${butlers}" \
  "${butlers}"
pushd "${butlers}"
rm -rf ".git"
just hi
popd

