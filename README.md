Toi
===

`toi` is a command line utility and DSL that helps you write scripts to
interact with with servers via SSH.

Example
-------

Put this into your `toi.tcl` file:
```tcl
set host "user@myserverhost.com"

proc deploy {} {
  ssh "git pull origin master"
}
```

And on in the command line:
  
    toi deploy

Installation
------------

1. `cd ~/bin` (or somewhere else)
1. `git clone git://github.com/juliend2/toi.git`
1. now add this line to your `.bashrc` file: `export PATH=$PATH:~/bin/toi`
1. `source ~/.bashrc`
