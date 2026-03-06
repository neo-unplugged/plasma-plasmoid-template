# Plasma Plasmoid Template

A minimal KDE Plasma widget (Plasmoid) template to kickstart your own widget development.

## Structure
```
plasma-plasmoid-template/
├── README.md
├── metadata.json
└── contents/
    └── ui/
        └── main.qml
```

## Requirements

- KDE Plasma 6
- `plasma-framework`
- `qt6-declarative`
- `kpackage`

### Install dependencies (Arch Linux)
```bash
sudo pacman -S plasma-framework qt6-declarative kpackage
```

## Installation

Clone the repo and copy the plasmoid folder to the Plasma plasmoids directory:
```bash
git clone https://github.com/neo-unplugged/plasma-plasmoid-template
cp -r plasma-plasmoid-template ~/.local/share/plasma/plasmoids/
```

## Test it
```bash
plasmawindowed plasma-plasmoid-template
```

## Add to Desktop or Panel

1. Right-click desktop → **Add Widgets**
2. Search for **"Plasmoid Template"**
3. Drag it to your desktop or panel

## Customization

After cloning, update these fields in `metadata.json`:

| Field | Description |
|---|---|
| `Id` | Unique ID e.g. `io.github.your-username.your-widget` |
| `Name` | Display name shown in widget picker |
| `Description` | Short description of your widget |
| `Authors` | Your name and email |
| `Website` | Your GitHub repo URL |

Then rename the folder to match your new `Id`.

## Development Tips

- Edit `contents/ui/main.qml` for your widget UI
- Re-run `plasmawindowed` to see changes
- Use `console.log("msg")` for debugging, view output with `journalctl -f`
- Browse `/usr/share/plasma/plasmoids/` for real world examples

## License

GPL-2.0-or-later
