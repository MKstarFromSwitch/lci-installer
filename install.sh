#!/usr/bin/env bash
set -euo pipefail
scriptdir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

clear
echo "LOLCODE Interpreter/lci installer"
echo "This will install the interpreter for lolcode from source."
read -rp "Press ENTER to install lci..."
echo
echo "Checking dependencies..."

# osage is a command provided by the package 'graphviz', this is why it is used here.
for cmd in git cmake make doxygen osage; do
   if ! command -v "$cmd" >/dev/null 2>&1; then
     echo "Required command $cmd is not installed."
     echo "Please install it and run the script again."
     exit 1
   fi
done

echo "Dependency check done."
echo "Checking sudo access... (which may request your password)"
sudo -v
echo
echo "Installing..."
cd "$HOME"
git clone https://github.com/justinmeza/lci.git
cd lci
cmake .
make && sudo make install
rm -rf "$HOME/lci/"
echo
echo "Done!"
exit 0





   
