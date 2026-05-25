# Cloudberry

> Swedish name: *hjortron*

A dark moss Omarchy theme with a cloudberry-orange accent. Sampled from a
Swedish cloudberry field — warm bone foreground, muted greens, sky blue, soft
magenta, and a strong `#ff7a00` accent on a `#111614` background.

![wallpaper](backgrounds/2-cloudberry-fruits.jpg)

## Install

```bash
omarchy theme install https://github.com/<your-user>/cloudberry.git
omarchy theme set cloudberry
```

For local development, symlink instead of cloning:

```bash
ln -s ~/src/personal/cloudberry ~/.config/omarchy/themes/cloudberry
omarchy theme set cloudberry
```

## What's in here

Omarchy generates most theme files (alacritty, btop, ghostty, hyprland,
hyprlock, kitty, mako, swayosd, walker, waybar, wofi) from `colors.toml` at
theme-set time, so this repo ships only what omarchy can't template:

| File | Purpose |
| --- | --- |
| `colors.toml` | Palette + accent / cursor / selection — the source of truth |
| `backgrounds/` | Wallpapers omarchy cycles through |
| `icons.theme` | GTK icon theme name |
| `chromium.theme` | RGB triplet used for Chromium frame color |
| `vscode.json` | VS Code colour theme + extension to install |
| `neovim.lua` | LazyVim spec defining the colorscheme inline |
| `aether/Cloudberry.json` | Aether blueprint for users of [aether](https://github.com/bjarneo/aether) |

## Palette

| Role | Hex |
| --- | --- |
| Background | `#111614` |
| Foreground | `#e6e2d3` |
| Accent (cloudberry orange) | `#ff7a00` |
| Selection background | `#2b2f2b` |
| Selection foreground | `#f6f3e9` |

### Terminal 16-color

| Idx | Role | Hex |
| --- | --- | --- |
| 0 | black | `#111614` |
| 1 | red | `#d3543c` |
| 2 | green | `#3a5d40` |
| 3 | yellow | `#c9b26d` |
| 4 | blue | `#5fa2d5` |
| 5 | magenta | `#b07aa1` |
| 6 | cyan | `#7ec0ae` |
| 7 | white | `#e6e2d3` |
| 8 | bright black | `#2b2f2b` |
| 9 | bright red / orange accent | `#ff7a00` |
| 10 | bright green | `#4f7a57` |
| 11 | bright yellow | `#e3c87a` |
| 12 | bright blue | `#7ec0ee` |
| 13 | bright magenta | `#d6a6cc` |
| 14 | bright cyan | `#a3d8c6` |
| 15 | bright white | `#f6f3e9` |

## Apply via aether instead

```bash
aether --import-blueprint aether/Cloudberry.json --auto-apply
```

## Tweaking

- **Active border / accent:** edit `accent` in `colors.toml` — omarchy's
  templates pick this up for hyprland active border, hyprlock check colour,
  waybar accents, etc.
- **Per-app override:** drop a file with the same name as one omarchy
  templates (e.g. `waybar.css`) into this directory; omarchy will use yours
  instead of the templated version.
- **Icon theme:** swap `Yaru-wartybrown` in `icons.theme` for any installed
  `Yaru-*` set (`pacman -Ql yaru-icon-theme`).
