# dot-other

This repo contain all little dotfile where it is not logic to create one repo for each of them.

>[!Important]
>Put this repo in `$HOME/.conf/`.

- `dunstrc`

This is a template for `pywal16` we need to symlink it to `$HOME/.conf/wal/templates/dunstrc`:

```sh
ln -s $HOME/.config/dunstrc $HOME/.conf/wal/templates/dunstrc
```

Then we need to symplink the output of `pywal16` into `$HOME/.conf/dunst/dunstrc`:

```sh
ln -s $HOME/.cache/wal/dunstrc $HOME/.conf/dunst/dunstrc
```

