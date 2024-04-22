# Stoa ~ A Neovim config

This is my neovim configuration. I use it for ruby and go development. It is a work in progress and I am constantly tweaking it. I have tried to keep it as minimal as possible because I believe that is the best way to learn and understand how things work and also because bloat really scares me.

This config uses [Lazy](https://github.com/folke/lazy.nvim) as the plugin manager. A lot of the plugins are loaded lazily so that they don't slow down the startup time of neovim. At the time of writing this, the startup time is recorded below.
![Startup Time](https://raw.githubusercontent.com/mmatongo/img/master/Startup%202024-04-22.png?token=GHSAT0AAAAAACEIG4DELRENKAEUDTCRUOY4ZRGYU4A)

## Installation

1. Clone this repo to your `~/.config/nvim` directory.
```bash
mv $HOME/.config/nvim $HOME/.config/nvim-bak && git clone https://github.com/mmatongo/nvim-config.git ~/.config/nvim
```

2. Run the following command to install the plugins and set up the configuration.
```bash
nvim --headless "+Lazy! sync" +qa
```

3. Install the language servers for the languages you want to work with through Mason.

## Screenshots
1. Start screen
![Start screen](https://raw.githubusercontent.com/mmatongo/img/master/Screenshot%202024-04-22%20at%2019.56.46.png?token=GHSAT0AAAAAACEIG4DFVUEH6JI5HT2NHGXCZRGYZIA)
2. Mason
![Mason](https://raw.githubusercontent.com/mmatongo/img/master/Screenshot%202024-04-22%20at%2020.07.25.png?token=GHSAT0AAAAAACEIG4DEKLZPNKLGGX2Y37CCZRGYZUQ)
3. Lazy
![Lazy](https://raw.githubusercontent.com/mmatongo/img/master/Screenshot%202024-04-22%20at%2020.07.50.png?token=GHSAT0AAAAAACEIG4DEBYY6R4NMER3PGFE6ZRGY2BQ)
4. Dressing
![Dressing](https://raw.githubusercontent.com/mmatongo/img/master/Screenshot%202024-04-22%20at%2020.13.04.png?token=GHSAT0AAAAAACEIG4DESY3PC76PIKQMXKHWZRGY2UA)
5. Editing
![Editing](https://raw.githubusercontent.com/mmatongo/img/master/Screenshot%202024-04-22%20at%2020.14.04.png?token=GHSAT0AAAAAACEIG4DEXQ5NZOEKPDIC7CTQZRGY3NQ)
6. Legendary
![Legendary](https://raw.githubusercontent.com/mmatongo/img/master/Screenshot%202024-04-22%20at%2020.27.31.png?token=GHSAT0AAAAAACEIG4DEC6WMK67EVZ7S4IKSZRGZBTA)

## Inspiration
- [Folke](https://github.com/folke) for the [Lazy](https://github.com/folke/lazy.nvim) plugin manager.
- [siduck](https://github.com/siduck) for [NvChad](https://github.com/NvChad/NvChad) which I used as a reference for some of the configurations.
