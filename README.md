## netease-cloud-music-appimage
[![Travis-ci](https://img.shields.io/travis/ZetaoYang/netease-cloud-music-appimage.svg?style=flat-square&label=Travis-ci)](https://travis-ci.org/ZetaoYang/netease-cloud-music-appimage)
[![Total Downloads](https://img.shields.io/github/downloads/ZetaoYang/netease-cloud-music-appimage/total.svg?style=flat-square)](https://github.com/ZetaoYang/netease-cloud-music-appimage/releases)

[netease-cloud-music](http://music.163.com) [AppImage](https://github.com/AppImage/AppImageKit) package

![interface](https://raw.githubusercontent.com/ZetaoYang/netease-cloud-music-appimage/master/images/interface.png)

![about](https://raw.githubusercontent.com/ZetaoYang/netease-cloud-music-appimage/master/images/about.png)

### Build

```bash
bash pkg2appimage-with-docker netease-cloud-music.yml
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
chmod u+x /usr/local/bin/netease-cloud-music

netease-cloud-music
```

### Usage 2

```bash
chmod u+x NetEase_Cloud_Music-*.AppImage
./NetEase_Cloud_Music-*.AppImage
```

### Deepin Mirror

- http://mirrors.163.com/deepin/
- http://mirror.math.princeton.edu/pub/deepin/

### Note

The package building method used in this project is [pkg2appimage](https://github.com/AppImage/pkg2appimage).

