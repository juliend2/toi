Toi
===

`toi` is a command line utility and tcl DSL that helps you write scripts to
interact with remote servers via SSH.

Example
-------

Put this into your `toi.tcl` file:
```tcl
set host "user@myserverhost.com"

proc deploy {} {
  ssh "git pull origin master"
}
```
(Note: toi.tcl must be executable)

And on in the command line:
  
    toi deploy

Installation
------------

1. `cd ~/bin` (or somewhere else)
1. `git clone git://github.com/juliend2/toi.git`
1. now add this line to your `.bashrc` file: `export PATH=$PATH:~/bin/toi`
1. `source ~/.bashrc`

Available commands
------------------

1. `ssh`: execute the specified `$command` remotely, on the `$host` specified in
   the `toi.tcl` file.
1. `in`: changes the current `$directory` on the remote host, for the commands
   executed in the `$body` block.
1. `local`: execute a `$command` locally.
1. `rsync`: use [rsync](http://en.wikipedia.org/wiki/Rsync) to synchronize the
   `$src` directory with the `$target` directory. Optionally accepts
   rsync-compatible `$options`.
1. `scp`: use [scp](http://en.wikipedia.org/wiki/Secure_copy) to synchronize
   the `$src` directory with the `$target` directory. Optionally accepts
   scp-compatible `$options`.

Changelog
---------

0.5 

* initial (working) version.

To do
-----

* write some examples
* write some tests
* write more comments
* change the directory layout a bit

