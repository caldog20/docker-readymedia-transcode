# ReadyMedia Transcode with Docker

Docker image for ReadyMedia (formerly known as MiniDLNA), a DLNA/UPnP-AV Media server with transcode support.

It use AUR [readymedia-transcode-git](https://aur.archlinux.org/packages/readymedia-transcode-git/) package based on [readymedia-transcode](https://bitbucket.org/stativ/readymedia-transcode) project.


License: **MIT**

## Local build
```sh
$ docker build -t mdouchement/readymedia-transcode .
```

## Running ReadyMedia container

```sh
# Running and get a Bash interpreter
$ docker run -v /my_media:/data -p 8200:8200 -it mdouchement/readymedia-transcode:latest

# Running as daemon
$ docker run -v /my_media:/data -p 8200:8200 -d mdouchement/readymedia-transcode:latest
```

- You can add options by setting the following environment variable `MINIDLNA_OPTS`
- You can change the video transcoder by setting the following environment variable `TRANSCODE_VIDEO_TRANSCODER`
  - default: `/usr/share/minidlna/transcodescripts/transcode_video-hq`
  - `/usr/share/minidlna/transcodescripts/transcode_video`

## Contributing

All PRs are welcome.

1. Fork it ( https://github.com/[my-github-username]/gemsupport/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
