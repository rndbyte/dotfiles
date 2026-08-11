# Dotfiles

This repo`s responsibility is to keep configuration files together and install them properly.

## Dependencies

GNU/Stow

```bash
sudo apt install stow
```

## How to use

Create links in the home directory.

```bash
stow .
```

Delete links in the home directory.

```bash
stow -D .
```

## Description

### Configs

| config            | description                                          |
| :---------------- | :--------------------------------------------------- |
| aria2             | download manager                                     |
| btop              | resource monitor that shows usage and stats          |
| cava              | cross-platform audio visualizer                      |
| cdw               | terminal front-end for cdrecord                      |
| cmus              | music player                                         |
| dunst             | notification daemon                                  |
| fontconfig        | font configuration files                             |
| gdb               | interactive project debugger                         |
| git               | distributed version control system                   |
| i3                | tiling window manager                                |
| irssi             | chat client                                          |
| libinput-gestures | gestures on touchpad via libinput-gestures           |
| mc                | text-based file manager for unix-like systems        |
| mpv 	            | command line media player                            |
| neomutt           | email client                                         |
| nvim              | text editor, ide                                     |
| nvtop             | interactive gpu process viewer                       |
| picom             | compositor                                           |
| tmux              | terminal multiplexer                                 |
| vifm              | vim-like environment for file systems                |
| X11               | x window system related, xinit, xressources, xmodmap |
| zathura           | document viewer                                      |
| zsh               | shell                                                |

### X11 pipeline

The X Window System settings are universal.
You can start a session either from DM or with the 'startx' command.

| Login Method  | Session Choice                    | Environment               |
| :------------ | :-------------------------------- | :------------------------ |
| DM -> i3      | /usr/share/xsessions/i3.desktop   | ~/.xprofile + DM          |
| DM -> Default | ~/.xsession                       | ~/.xprofile + ~/.xsession |
| startx i3     | ~/.xsession i3                    | ~/.xprofile + ~/.xsession |
