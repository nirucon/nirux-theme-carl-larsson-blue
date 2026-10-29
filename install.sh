#!/bin/sh
set -eu
here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
replace=
case "${1:-}" in
  --replace) replace=--replace ;;
  '') ;;
  *) printf 'Usage: install.sh [--replace]\n' >&2; exit 2 ;;
esac
NIRUCTL=$(command -v niructl 2>/dev/null || :)
[ -n "$NIRUCTL" ] || [ ! -x "$HOME/.local/bin/niructl" ] || NIRUCTL="$HOME/.local/bin/niructl"
[ -n "$NIRUCTL" ] || [ ! -x "$HOME/.local/share/nirux/current/bin/niructl" ] || NIRUCTL="$HOME/.local/share/nirux/current/bin/niructl"
[ -n "$NIRUCTL" ] || {
  printf 'niructl is required. Install NIRUX first.\n' >&2
  exit 1
}
"$NIRUCTL" theme-import "$here/themes/niru-carl-larsson-blue.toml" \
  --id niru-carl-larsson-blue \
  --wallpaper "$here/wallpapers/nirux-wallpaper-carl-larsson-blue-4k.png" $replace
printf 'Installed Niru Carl Larsson Blue. Select it with: niructl theme niru-carl-larsson-blue\n'
