# Dotfiles

_"My personal dotfiles settings and configurations for local and remote machines."_

This projects is contains several configurations file, scirpts and settings for my local and remote machines and sync together from my devices.

## Settings included

Here are the list of apps, or settings that are included in this project:

- Bat
- Ghostty
- Neovim
- Oh My Posh
- Zed

Here are apps and browser apps that installed on computer and phone. You can see the detail and list of apps that need to setup on the computer.

- Notion
- Notion Calendar
- Bitwarden
- Figma
- Spark
- Capcut
- Spotify
- Zed
- Ghostty
- Blip
- Tencent Lemon Lite
- VLC
- Hoppscotch
- Brave Browser
- Raycast
- Obsidian
- Podman Desktop
- Xcode
- Docker
- Airtable
- Framer
- Slack
- Discord
- Layer
- Slack
- Caps
- Komodo Screen Recorder
- Screen Studio
- Zoom
- Android Studio
- Canva
- Spline
- Rive
- ChatGPT
- Typing Mind
- Gemini
- Claude
- Perplexity
- HiddenBar
- Cloudflare Warp
- Cal.com
- Jittr
- Google Drive
- Bolt.new
- Theads
- Twitter
- Linkedin
- Instagram
- Facebook
- Tokopedia
- Youtube
- Youtube Music
- Google Chat
- Google Contact
- Google Docs
- Google Sheets
- Google Slides
- Gogole Meet
- Github
- Hashnode
- Toggl Track
- Pitch
- Excalidraw
- Tldraw
- Whimsical
- Miro
- Dribbble
- Mockuuups Studio
- Medium
- Daily.dev
- Dev.to
- Beehiiv
- Google News
- Make it
- Peerlist
- Google Maps
- Termius
- Google Photos
- Eleven Labs

Some command line tools that are installed on the computer and other devices.

- homebrew
- bat
- eza
- fastfetch
- bun
- curl
- deno
- eza
- kubernetes-cli
- lazydocker
- lazygit
- node@22
- ohmyposh
- podman
- xh
- zoxide

## Installation

To install all of the application, we gonna combine the homebrew, cask, and web apps.

- Install the homebrew first, go to [https://brew.sh/](https://brew.sh/) then follow the installation instruction. Or for fast run the following command.
  ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- Before starting to install, make sure you copy the `.Brewfile` into `~/.Brewfile` or using specific command for different location.
- Start install the command line tools using homebrew via .Brefile.

  ```sh
    # For global use
    brew bundle check --global || brew bundle install --global

    # For current workdir
    brew bundle --file=./.Brewfile check || brew bundle --file=./.Brewfile install
  ```

## Migrations

To doing migrations, we need to use `stow` as symlink tools to connect the dotfiles configs into the positions. To execute, run the following command.

```sh
  # Ensure the symlink clean
  stow -D -t ~ .

  # Do symlink
  stow -t ~ . --adopt
```

The command will remove all the recent symlink and then install the new one.

## Documentation

- This project is maintain under the [MIT License](./LICENSE).
- To contribute to this project, please read the [CONTRIBUTING.md](./CONTRIBUTING.md) file.
- See the [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) file.

## Thanks

Thanks to read this project documentation.
