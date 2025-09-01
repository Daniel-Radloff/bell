# bell
`bell` is a simple zsh script (srry bash users, if you can get it working open a PR and I'll take a look) that performs the singular function of playing a sound when a command has finished executing.


https://github.com/user-attachments/assets/f1b904d4-470c-46a9-85c8-0e8e04e35de4


A simple concept that brings surprising peace of mind to a number of tasks.
By playing a sound when execution has finished, you can safely turn your focus elsewhere without needing to repeatedly check if its finished executing or not.

This can be useful if commands take a long time to finnish their execution like `nmap` or `gobuster`, or if you are testing something and the program exits prematurely. There is no worse feeling than waiting for something to execute for 2 minutes, only to open the window again and to see that it failed a few seconds after you ran the command.

```bash
bell nmap -sV -oA -Pn --disable-arp-ping -n 127.0.0.1 # because why not scan localhost lmao
```

ps. completion still works.

## Installation
The script is only a few lines long so I would suggest just copying it into a new file.
Change line 5 to use the audio file that you want to use as your sound.

After that, add something along the lines of `source ~/.config/zsh/bell.zsh` to your zsh config and you should be good to go. If it gives you permission errors add execute with `chmod +x bell.zsh`.

- If you use pulse: it should be fine (`pulseaudio-utils` _should_ be installed).
- If you use pipewire: it should still usually work (on most distros) but if it says `paplay not found` or something like that, change the line where you changed the audio file to use `pw-play` instead of `paplay`.
- If you use alsa
    1. First: What the fuck is wrong with you.
    2. Second: You should be able to figure it out yourself since you are so clever and minimalist (cause I don't have a clue myself).

> Do not touch the completion part that says do not touch it. It is vibe coded and probably hanging on by a thread but it works damnit so leave it be.
