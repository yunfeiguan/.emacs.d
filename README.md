Hello! Welcome to my Emacs configuration.

You should be able to clone this into .emacs.d start Emacs, accept the
repository certificate and be on your way.

Since I use different fonts on different systems (depending on the
screen resolution), I configure that in `.Xresources` with a line like:
```
emacs.font: Inconsolata-22
```

I also, normally, start an Emacs daemon, when I log in, using
systemd. To do so, create a file with a name like
`$HOME/.config/systemd/user/emacs.service` containing:
```ini
[Unit]
Description=Emacs Daemon
Documentation=man:emacs

[Service]
Type=forking
TimeoutSec=30s
ExecStart=/usr/bin/emacs --daemon
ExecStop=/usr/bin/emacsclient -e '(kill-emacs)'

[Install]
WantedBy=default.target
```

You can then set `$EDITOR` to `/usr/bin/emacsclient -c -a vim`.
