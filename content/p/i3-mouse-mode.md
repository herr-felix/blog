---
title: Mouse mode in i3wm
date: 2020-08-11
---

Sometimes, you don't want to use the mouse. I created a mode in my i3 config file so I won't have to.

First, install `xautomation` with your favorite package manager.

```text
sudo apt-get install xautomation
```

Then, add this to your i3 configuration file.

```text

mode "mouse" {
    bindsym Up exec "xte 'mousermove 0 -50'"
    bindsym Down exec "xte 'mousermove 0 50'"
    bindsym Left exec "xte 'mousermove -50 0'"
    bindsym Right exec "xte 'mousermove 50 0'"

    bindsym Shift+Up exec "xte 'mousermove 0 -5'"
    bindsym Shift+Down exec "xte 'mousermove 0 5'"
    bindsym Shift+Left exec "xte 'mousermove -5 0'"
    bindsym Shift+Right exec "xte 'mousermove 5 0'"

    bindsym Return exec "xte 'mouseclick 1'"
    bindsym Shift+Return exec "xte 'mouseclick 3'"

    bindsym $mod+Shift+Return exec "xte 'mousedown 1'"
    bindsym $mod+Return exec "xte 'mouseup 1'"

    bindsym $mod+Up exec "xte 'mouseclick 4'"
    bindsym $mod+Down exec "xte 'mouseclick 5'"

    bindsym $mod+m exec "xte 'mousemove 0 0'"

    bindsym Escape mode "default"
}

bindsym $mod+m mode "mouse"

```

## How to use

To activate the `mouse mode`, press **$mod+m**. To escape `mouse mode`, press **Escape**.

Use the arrows to move the mouse around. In my config, it moves by 50 pixels at every stoke. Feel free to alter this value.

For more precision, press **Shift** with the arrows. In my config, it will move by _only_ 5 pixels.

To click with the left button, press **Return**. For the right button, press **Shift+Return**.

To drag something, "grab" it by pressing **$mod+Shift+Return**, move it around with the arrows, then release it by pressing **$mod+Return**.

To scroll up, **$mod+Up** (arrow up). To scroll down, **$mod+Down**.

To move the mouse directly to the upper-left corner, press **$mod+m** a second time.

That's it. You can now unplug your mouse from your computer. You're welcome!
