# herdr-app-picker

A Ctrl-n/Ctrl-p navigation fork of Herdr's "Go to a tab, space or agent…" picker.

It adds no global key binding. Open the existing picker with `Cmd-P`; inside the picker:

- `Ctrl-n` — move down / next result
- `Ctrl-p` — move up / previous result
- `Arrow Down` / `Arrow Up` — also navigate
- `Enter` — open the selected tab, space or agent
- `Esc` — close
- `Ctrl-d` — close the selected tab

## Install

Copy or link `mods/herdr-app-picker` into Herdr's app home:

```sh
app_home="${HERDR_APP_HOME:-$HOME/.config/herdr-app}"
ln -sfn "$(pwd)/mods/herdr-app-picker" "$app_home/mods/herdr-app-picker"
```

Open it from a shell:

```sh
herdr-app do mod.open:herdr-app-picker
```

Or replace the `mod.open:picker` command in `global.cmd-p` with
`mod.open:herdr-app-picker`.

## Verify

```sh
herdr-app check mods/herdr-app-picker
herdr-app do mod.open:herdr-app-picker
```

The mod is a clone of Herdr's shipped picker. Keep it separate from
`mods/picker`: Herdr may replace shipped mods on update.
