# Ember

#
# I'll be real with you this thing doesnt work yet.
#

A minimal, beautiful terminal emulator with ashen theme. Built with Python and pywebview. No bloat, just a prettier terminal.

## Features

- **Post-cyberpunk aesthetic** — Black background with ember orange accents
- **Config file driven** — All settings in `~/.config/ember/config.ini`
- **Typing indicator only** — Clean UI, caret appears only when focused
- **Semantic output** — Color-coded badges for errors, warnings, info
- **Minimal scope** — Just a terminal, nothing more

## Installation

### Arch Linux

```bash
git clone https://github.com/yourusername/ember.git
cd ember
makepkg -si
```

Then run:
```bash
ember
```

### Manual (Any Linux/macOS/Windows)

Requirements:
- Python 3.8+
- pywebview

```bash
git clone https://github.com/yourusername/ember.git
cd ember
pip install -r requirements.txt
chmod +x ember
./ember
```

## Usage

Type commands at the prompt. Built-in commands:

```
help        Show available commands
clear       Clear terminal
echo [text] Echo text
date        Show current date/time
whoami      Show user
pwd         Print working directory
history     Show command history
version     Show version info
```

### Keyboard Shortcuts

- `Arrow Up` — Previous command from history
- `Arrow Down` — Next command from history
- `Ctrl+L` — Clear terminal

## Configuration

Config file location: `~/.config/ember/config.ini`

On first run, Ember creates a default config. Edit it to customize:

```ini
[display]
# Font size in pixels (11-18 recommended)
font_size = 13

# Line height multiplier
line_height = 1.6

# Font family (comma-separated, uses first available)
font_family = JetBrains Mono, Fira Code, Courier New, monospace

[theme]
# Theme name: ashen (black+orange), void (pure black), light (light theme)
name = ashen

# Color palette (hex format)
bg0 = #0e0b0a
bg1 = #161210
bg2 = #1e1714
bg3 = #281e19
border = #3a2418
border_hi = #522e1c
fg0 = #d8c8bc
fg1 = #a08070
fg2 = #6a5040
accent = #e8681a
accent2 = #c04c08
green = #7abf6a
red = #d04040
amber = #e8a030
purple = #b87aaa

[behavior]
# Maximum command history items to store
max_history = 50

# Scroll to bottom on new output
scroll_on_output = true

# Show timestamps in history
show_timestamps = false
```

### Theme Presets

**Ashen** (default) — Black with ember orange accents
```ini
[theme]
name = ashen
bg0 = #0e0b0a
fg0 = #d8c8bc
accent = #e8681a
```

**Void** — Pure black, minimal accents
```ini
[theme]
name = void
bg0 = #000000
bg1 = #080808
fg0 = #e0e0e0
accent = #c0c0c0
```

**Light** — Light backgrounds (experimental)
```ini
[theme]
name = light
bg0 = #ffffff
fg0 = #1a1a1a
accent = #ff6600
```

### Custom Colors

All colors in the config are hex format. Edit `[theme]` section:

```ini
[theme]
name = custom
bg0 = #1a1a1a      # Main background
bg1 = #2a2a2a      # Secondary bg (titlebar, input)
fg0 = #e0e0e0      # Primary text
fg1 = #a0a0a0      # Secondary text (prompts)
fg2 = #606060      # Tertiary text (dim)
accent = #ff6600   # Highlight color
```

## Building from Source

```bash
# Install dependencies
pip install -r requirements.txt

# Run directly
./ember

# Or build Arch package
makepkg -f
```

## Project Structure

```
ember/
├── ember                # Python entry point (executable)
├── terminal.html        # Web UI (HTML/CSS/JS)
├── ember.desktop        # Launcher integration
├── PKGBUILD            # Arch Linux package definition
├── config.ini.example  # Config file template
├── requirements.txt    # Python dependencies
├── LICENSE             # MIT license
└── README.md           # This file
```

## Extending

**To add custom commands:** Edit the `commands` object in `terminal.html`

```javascript
const commands = {
  mycommand: (args) => {
    return 'Command output here';
  }
};
```

**To add Python backend commands:** Extend the `API` class in `ember` script:

```python
class API:
    def my_python_command(self, arg):
        return f"Python says: {arg}"
```

Then call from HTML:
```javascript
const result = await pywebview.api.my_python_command('hello');
```

**To customize colors:** Edit `[theme]` section in `~/.config/ember/config.ini`

## License

MIT. See LICENSE file.

## Philosophy

Ember is a terminal. Not a command runner, not a dashboard, not a workflow orchestrator. It's a prettier way to interact with your shell. Keep it that way.
