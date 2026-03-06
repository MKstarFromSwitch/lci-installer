# lci-installer
A script that installs the LOLCODE interpreter

## How to run (go below for git clone instructions)
For directly running it, install dependencies with this command:
```shell
sudo apt install git build-essential cmake graphviz doxygen
```

And then, run this command:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/MKstarFromSwitch/lci-installer/HEAD/install.sh)"
```

For git cloning, do this (If you want to inspect, replace './install.sh' with 'less install.sh'):
```shell
sudo apt install git build-essential cmake graphviz doxygen && git clone https://github.com/MKstarFromSwitch/lci-installer.git
cd lci-installer
./install.sh
```
