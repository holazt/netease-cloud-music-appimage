## netease-cloud-music-appimage
[![Actions](https://img.shields.io/github/workflow/status/ZetaoYang/netease-cloud-music-appimage/netease-cloud-music%20Appimage%20Build(x86_64)?label=Actions)](https://github.com/ZetaoYang/netease-cloud-music-appimage/actions)
[![Total Downloads](https://img.shields.io/github/downloads/ZetaoYang/netease-cloud-music-appimage/total.svg?style=flat-square)](https://github.com/ZetaoYang/netease-cloud-music-appimage/releases)

[netease-cloud-music](http://music.163.com) [AppImage](https://github.com/AppImage/AppImageKit) package, it supports **SQ** lossless audio(FLAC), and enjoy!

![interface](https://raw.githubusercontent.com/ZetaoYang/netease-cloud-music-appimage/master/images/interface.png)

![about](https://raw.githubusercontent.com/ZetaoYang/netease-cloud-music-appimage/master/images/about.png)

### Build

```bash
pkg2appimage ./workspace/netease-cloud-music.yml
```

### Usage  1

```bash
cat > netease-cloud-music.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=NetEase Cloud Music
Name[zh_CN]=网易云音乐
Name[zh_TW]=網易雲音樂
Comment=NetEase Cloud Music
Comment[zh_CN]=网易云音乐
Comment[zh_TW]=網易雲音樂
Icon=netease-cloud-music
Exec=netease-cloud-music %U
Categories=AudioVideo;Player;
Terminal=false
StartupNotify=true
StartupWMClass=netease-cloud-music
MimeType=audio/aac;audio/flac;audio/mp3;audio/mp4;audio/mpeg;audio/ogg;audio/x-ape;audio/x-flac;audio/x-mp3;audio/x-mpeg;audio/x-ms-wma;audio/x-vorbis;audio/x-vorbis+ogg;audio/x-wav;
EOF

cp netease-cloud-music.desktop /usr/share/applications/
cp NetEase_Cloud_Music-*.AppImage /usr/local/bin/netease-cloud-music
chmod a+x /usr/local/bin/netease-cloud-music

netease-cloud-music
```

### Usage 2

```bash
chmod u+x NetEase_Cloud_Music-*.AppImage
./NetEase_Cloud_Music-*.AppImage
```

### HiDPI (High Dots Per Inch)
```bash
cp NetEase_Cloud_Music-*.AppImage /usr/local/bin/netease-cloud-music

cat > netease-cloud-music-hidpi.sh <<EOF
#! /bin/bash

# for Qt applications, reset pixel ratio to 2.
export QT_AUTO_SCREEN_SCALE_FACTOR=2
# and force scale factor to 2.

if [ -e /usr/local/bin/netease-cloud-music ] ; then
	exec /usr/local/bin/netease-cloud-music
else
	exec netease-cloud-music
fi
EOF

chmod u+x netease-cloud-music-hidpi.sh

./netease-cloud-music-hidpi.sh
```

### Deepin Mirror

- http://mirrors.kernel.org/deepin/
- http://mirror.math.princeton.edu/pub/deepin/
- http://mirrors.163.com/deepin/

### Note

1. The package building method used in this project is [pkg2appimage](https://github.com/AppImage/pkg2appimage).

2. Solve the problem that netease cloud music for Linux can not play lossless audio format (FLAC) music. thanks to [EHfive's ncm.patch](https://gist.github.com/EHfive/bfc6098feb99a02bf59192618107d2ef#file-ncm-patch) and his [blog article](https://blog.eh5.me/fix-ncm-flac-playing/).

   ```
   Patch VLC to make the Content-Type of flac network files/streams always be "audio/flac" to "fix" the problem that VLC fails to recognize the flac network files correctly due to the Content-Type of "audio/mpeg" obtained by NetEase Cloud Music for Linux. 
   ```

### Troubleshooting

Q1: netease-cloud-music: error while loading shared libraries: **libgtk-x11-2.0.so.0**: cannot open shared object file: No such file or directory

A1: Try `dnf install gtk2` if you're using Fedora.

Q2: netease-cloud-music: error while loading shared libraries: **libnsl.so.1**: cannot open shared object file: No such file or directory

A2: Try `dnf install libnsl` if you're using Fedora.

