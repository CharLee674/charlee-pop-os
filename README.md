# charlee-pop-os

As a relatively new Linux user, I often "accidentally" mess up my installation and have to reinstall everything.

![](https://depositphotos.com/stock-photos/sad-cat.html)

These Ansible scripts were written with that in mind, and is aimed to ensure that I can restart easily.

## Usage

Clone the repository, then run the Makefile:

```Bash
$ make install
```

This will:
- Install `ansible`
- Run ansible scripts to provision all the software


## What is being installed?

The Ansible scripts are organized into different files, each installing a different "component" of my ideal OS. (it is constantly updating as well, of course!)
