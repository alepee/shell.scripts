# Shell scripts

To use all scripts
```bash
for f in ~/.scripts/*.sh; do source $f; done
```

### Battery status

Display battery status in RPROMPT on iTerm2

> :warning: This scripts depends on zsh plugin from https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/battery/battery.plugin.zsh

![Battery plugged](http://get.antoine.io/180B3o0k371L/[fd7a9c9fbf69ebf89e9f67a08bb68e50]_Image%25202017-07-10%2520at%25205.55.57%2520PM.png)

![Battery unplugged](http://get.antoine.io/3n3U3F3T442Q/[fa6d1aaa80743712a0aefb70ecc31d03]_Image%25202017-07-10%2520at%25205.56.07%2520PM.png)

### Time

Display time in RPROMPT on iTerm2

### Free disk space

> :warning: Read carefully to unsure this behave as you would like to.

An automate script to delete temporary files (including downloads if asked), cache from docker, composer, yarn, rubygems and homebrew. (check every command existance before asking/exec)

If ncdu is installed perform a check to give you a better understanding of how you use your disk.

### Meteo

Just a command to curl on the excellent [http://wttr.in](http://wttr.in)

```bash
$ meteo Paris, France
```

![Meteo report](http://get.antoine.io/3v1F2y2T1c3Z/[85bae424fff6d9a5da72debe4116164c]_Image%202017-07-10%20at%206.17.44%20PM.png)

### What is my IP again?

Perform a curl on ifconfig.co

```bash
$ myip
```

### Nano

If you try to open a protected file this will warn you and ask you to sudo your command.
Courtesy of @christophehurpeau

![Would you like to sudo ?](http://get.antoine.io/111J1Y2b091u/[cf890b582699e828ad645b4f63fba945]_Image%25202017-07-10%2520at%25206.09.21%2520PM.png)
