#!/usr/bin/env python
# -*- coding: utf-8 -*-

import subprocess

from i3pystatus import Status

black =		"#292929"
darkblack =	"#0d0d0d"
red =		"#eab4a7"
darkred =	"#be4a2d"
green =		"#a7eab4"
darkgreen =	"#2dbe4a"
yellow =	"#dceaa7"
darkyellow =	"#a1be2d"
blue =		"#b4a7ea"
darkblue =	"#8888DD"
magenta =	"#eaa7dc"
darkmagenta =	"#be2da1"
cyan =		"#2da1be"
darkcyan =	"#0d517e"
white =		"#d8d8d8"
darkwhite =	"#d8d8d8"

background =	"#556270"

status = Status(standalone=True)

status.register("clock",
        format="%a %-d %b %X",)

status.register("cpu_usage",
        format="CPU: {usage}%",)

status.register("network",
        interface="enp3s0",
        color_up=white,
        color_down=red,
        format_up="{v4cidr}",
        format_down="")

status.register("pulseaudio",
        format="VOL {volume}%",
        color_muted=red,
        color_unmuted=white,)

status.run()
