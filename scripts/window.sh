# Window hook for .github/scripts/capture-windows.sh: Ghostty runs the shared session
# from docs/PREVIEWS.md with each theme.
# Requires: ghostty, fastfetch, eza.
# shellcheck shell=bash
name=Ghostty

launch() {
  printf 'theme = %s\nfont-family = %s\nfont-size = 11\nwindow-decoration = false\nwindow-padding-x = 8\nwindow-padding-y = 8\ntitle = kanagawa\n' \
    "$root/themes/kanagawa-$1" "$font" >"$work/ghostty-$1"
  printf 'ghostty --config-default-files=false --config-file=%s -e %s %s' "$work/ghostty-$1" "$session" "$1"
}
