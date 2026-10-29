# NIRUX Theme: Carl Larsson Blue

A NIRUX suite theme pack based on the blue Carl Larsson wallpaper.

- Theme ID: `niru-carl-larsson-blue`
- Display name: **Niru Carl Larsson Blue**
- Background: `#0c121b`
- Foreground: `#d9e2ee`
- Muted: `#8d9aab`
- Border: `#273646`
- Focus: `#6f9bc7`
- Wallpaper: `nirux-wallpaper-carl-larsson-blue-4k.png` (4K)

## Install

NIRUX must be installed and `niructl` must be in `PATH`.

```sh
./install.sh
niructl theme niru-carl-larsson-blue
```

The installer uses `niructl theme-import`, so it validates the theme and
installs both the palette and wallpaper into the standard per-user locations.
No root access is required.

To replace an existing installation after a pack update:

```sh
./install.sh --replace
niructl theme niru-carl-larsson-blue
```

## Uninstall

```sh
./uninstall.sh
```

## Compatibility

The theme is a user theme, so the suite discovers it without being added to any
built-in theme list. Components that follow the shared NIRUX theme pick it up:
NIRUWM, NIRUBAR, NIRU Launcher, NIRUNOTIFY, NIRULOCK, NIRUSCREENSAVER,
NIRUSHOT, NIRUPRES editor chrome, NIRUFLOW, NIRUORG and NIRUNOTE with
**Follow NIRUX**. NIRUPRES slide themes remain independent by design.
