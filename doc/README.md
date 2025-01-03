# Woof OS Qtile Edition - Qtile Config

# Keybinds

Woof OS uses a tiling window manager, qtile, mainly controlled using the keyboard.  
The keybinds listed here are declared in `~/.config/qtile/config.py`.

By default, `[mod]` is the `Super`/`mod4` key, which is the `⊞ Win` key on most keyboards, and the `⌘ Command` key on Macs.

## Focus navigation

- `[mod]` `H` moves focus to the **left**
- `[mod]` `L` moves focus to the **right**
- `[mod]` `J` moves focus **down**
- `[mod]` `K` moves focus **up**
- `[mod]` `Space` moves focus to the **next window**
- `[mod]` `.` moves focus to the **next screen**

The mouse can also be used to switch focus between windows by simply hovering over them.

- `[mod]` `1`/`2`/`3`/`4`/`5`/`6`/`7`/`8`/`9` moves focus to the workspace assigned to the ID

## Window arrangement

- `[mod]` `Shift` `H` moves focused window to the **left**
- `[mod]` `Shift` `L` moves focused window to the **right**
- `[mod]` `Shift` `J` moves focused window **down**
- `[mod]` `Shift` `K` moves focused window **up**
- `[mod]` `Shift` `Return` toggles between split and unsplit sides of stack
- `[mod]` `Tab` toggles between layouts
- `[mod]` `Shift` `1`/`2`/`3`/`4`/`5`/`6`/`7`/`8`/`9` shifts focused window to the workspace assigned to the ID

## Window sizing

- `[mod]` `CTRL` `H` grows window to the **left**
- `[mod]` `CTRL` `L` grows window to the **right**
- `[mod]` `CTRL` `J` grows window **down**
- `[mod]` `CTRL` `K` grows window **up**
- `[mod]` `N` resets all window sizes

## Miscellaneous and launching programs

- `[mod]` `Return` launches the terminal (alacritty)
- `[mod]` `R` opens the Rofi run launcher
- `[mod]` `P` opens the Rofi power menu
- `[mod]` `B` launches the web browser (brave)
- `[mod]` `C` launches the file manager (vifm)
- `[mod]` `Z` opens copied PDF URL in Zathura
- `[mod]` `Y` opens copied YouTube URL in MPV (using yt-dlp)
- `[mod]` `F` opens the Flameshot GUI
- `[mod]` `S` takes a full screenshot using Scrot
- `[mod]` `T` spawns a command using a prompt
- `[mod]` `V` shows the active windows through Rofi
- `[mod]` `D` sends a notification including the current date and time
- `[mod]` `Q` kills focused window
- `[mod]` `CTRL` `R` restarts Qtile
- `[mod]` `CTRL` `Q` shuts down Qtile

---

# Gallery

![main image](https://os.lewoof.xyz/images/qtile/s4.png)

![screenshot](https://os.lewoof.xyz/images/qtile/s0.png)

![screenshot](https://os.lewoof.xyz/images/qtile/s1.png)

![screenshot](https://os.lewoof.xyz/images/qtile/s2.png)

![screenshot](https://os.lewoof.xyz/images/qtile/s3.png)

![screenshot](https://os.lewoof.xyz/images/qtile/s5.png)

![screenshot](https://os.lewoof.xyz/images/qtile/s6.png)
