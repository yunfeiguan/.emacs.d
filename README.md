Hello! Welcome to my Emacs configuration.

You should be able to clone this into .emacs.d and be on your way.

Since I use different fonts on different systems (depending on the
screen resolution), I configure that in `.Xresources` with a line like:
```
emacs.font: Inconsolata-22
```

I use an Emacs daemon started by systemd. To do so, create a file with
a name like `$HOME/.config/systemd/user/emacs.service` containing:
```ini
[Unit]
Description=Emacs Daemon
Documentation=man:emacs

[Service]
Type=forking
TimeoutSec=240s
ExecStart=/usr/bin/emacs --daemon
ExecStop=/usr/bin/emacsclient -e '(kill-emacs)'

[Install]
WantedBy=default.target
```

And type `systemd --user enable emacs` to have it started on login.

You can then set `$EDITOR` to `/usr/bin/emacsclient -c -a vim`.
