# dot-other

This repo contain all little dotfile where it is not logic to create one repo for each of them.

>[!Important]
>Put this repo in `$HOME/.conf/`.

## `dunstrc`

This is a template for `pywal16` we need to symlink it to `$HOME/.conf/wal/templates/dunstrc`:
```sh
ln -s $HOME/.config/dunstrc $HOME/.conf/wal/templates/dunstrc
```

Then we need to symlink the output of `pywal16` into `$HOME/.conf/dunst/dunstrc`:
```sh
ln -s $HOME/.cache/wal/dunstrc $HOME/.conf/dunst/dunstrc
```

## `chromium.json`

>[!Warning]
>The chromium browser don't set automaticly the theme on each generation.
>So we need to remove `'Cached Theme.pak'`(inside the theme folder) and relaunch the browser.


This is a template for `pywal16` we need to symlink it to `$HOME/.conf/wal/templates/dunstrc`:
```sh
ln -s $HOME/.config/dot-other/chromium.json $HOME/.config/wal/templates/manifest.json
```

Then create a folder. I will put it inside `$HOME/.cache/chromium-pywal`
```sh
mkdir -p $HOME/.cache/chromium-pywal
```
>[!IMPORTANT]
>I need to put it inside `$HOME/.cache/chromium-pywal`, because my script `walthe.sh` remove `'Cached Theme.pak'` so that the browser can detect the new theme.


Then we need to symlink the output of `pywal16` into `$HOME/.cache/chromium-pywal/manifest.json`:
```sh
ln -s $HOME/.config/wal/templates/manifest.json $HOME/.cache/chromium-pywal/manifest.json
```
## app folder

This forlder contain `.desktop` app.

I created script `app/update.sh` to create symlink into `~/.local/share/application`.

You can change the variable `app_folder` to one of those:
- `~/.local/share/applications/`
- `/usr/local/share/applications/`
- `/usr/share/applications/`
- `$XDG_DATA_DIRS/applications/`
