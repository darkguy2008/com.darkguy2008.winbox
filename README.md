# Unofficial Winbox Linux Flatpak!
Okay so it seems that Mikrotik doesn't want to provide a Linux-compatible package for their Winbox software, regardless if it's at least a simple .deb or .rpm file. Heck, even an AppImage would be appreciated, but nada. I tried to make one and failed miserably, but I was able to hack together a Flatpak one in a couple hours, so here it is.

This app is for managing networking devices and you'll be wise to be paranoid about my packaging, so that's why it's in GitHub so you can view the source code. Basically it's just a simple script that downloads winbox64.exe if it doesn't exist, and then runs it using the new WINE 7.x flatpak as base image, that's it. If you want to run it, you must clone this repo and build the flatpak yourself, it's pretty easy anyways.

Let's hope that Mikrotik releases an official Linux build someday soon.

# HELP WANTED!
Okay so this was just to solve a specific need I had where I wanted to run Winbox without having to fully install WINE on my system or set up a Windows VM for just this app, so the only way to run it is through the terminal (no desktop/GUI icon/shortcut) - I added one but it doesn't seem to work.

Also, it's not published on Flathub either and it does not support connecting through MAC address, only IP address, so if you know how to do any of these things you're very welcome to do so and I'll be very happy to merge your pull request :)

# Building
Make sure to install flatpak-builder and org.winehq.Wine flatpak image beforehand, then run this:
```
flatpak install org.winehq.Wine
git clone --depth=1 https://github.com/darkguy2008/com.darkguy2008.winbox.git
cd com.darkguy2008.winbox
cd flatpak
flatpak-builder --force-clean winbox com.darkguy2008.winbox.yml
flatpak-builder --user --install --force-clean winbox com.darkguy2008.winbox.yml
```

# Running
```
flatpak run com.darkguy2008.winbox
```

# Have fun!
MIT license!
