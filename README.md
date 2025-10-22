![blueprint-tui](blueprint-tui.jpg)

# blueprint-tui

blueprint-tui is an unofficial TUI tool for managing Blueprint extensions. It's quite basic, but might come useful to a few people c:

[![Athena Award Badge](https://img.shields.io/endpoint?url=https%3A%2F%2Faward.athena.hackclub.com%2Fapi%2Fbadge)](https://award.athena.hackclub.com?utm_source=readme)

<br/>

## Why make this?
I've never really coded a proper TUI in bash, and I really wanted an excuse to experiment with [charmbracelet/gum](https://github.com/charmbracelet/gum).

## How do I install blueprint-tui?

**Requirements**
- A Linux machine
- [Blueprint](https://blueprint.zip)
- A Pterodactyl panel (if you got Blueprint installed you likely also got Pterodactyl :P)
- `bash`
- `screen`, to open up terminal "screens"
- `gum`, for the fancy menus ([installation instructions here!!](https://github.com/charmbracelet/gum?tab=readme-ov-file#installation))

### Clone the repository

First, clone the blueprint-tui repository to your local machine. This is blueprint-tui's installation directory. You can use a different directory to the one used in the command below, if you know what you are doing.

```bash
git clone https://github.com/prplwtf/blueprint-tui.git ~/.blueprint-tui
```

### Make executable

To run blueprint-api, you have to make it executable.

```bash
chmod +x ~/.blueprint-api/tui.sh
```

### Make it a command

In your `~/.bashrc` or `~/.zshrc`, create an alias for `~/.blueprint-tui/tui.sh` to run it more easily.

```bash
# When using bash
echo "alias blueprint-tui=\"~/.blueprint-tui/tui.sh\"" >> ~/.bashrc

# When using zsh
echo "alias blueprint-tui=\"~/.blueprint-tui/tui.sh\"" >> ~/.zshrc
```

### Source the shell config

Finally, source the shell config to apply the alias to your current session.

```bash
# When using bash
source ~/.bashrc

# When using zsh
source ~/.zshrc
```

### Run blueprint-tui

You can now run blueprint-tui. It will automatically detect your Blueprint installation. (if it ever doesn't, don't worry, you'll know)

```bash
blueprint-tui
```
