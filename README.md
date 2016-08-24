# HexMirror

This is a small simple service to mirror hex.pm to the local disk.

This was written for [elixir.camp](http://elxiir.camp),
where there is no internet connection, and so needs to be
able to work completely offline.

## Instructions

1. Download it, setup deps and run

```bash
git clone git@github.com:aussiegeek/hex_mirror.git
npm install
mix deps.get
npm install
mix phoenix.server
```

2. Wait. By default it will start mirroring automatically and save to
`./tarballs`. As of July 2016, this will fetch ~700MB of data.

3. People that want to use your mirror will need to do this
(assuming your local address is 'thingy.local'):

```bash
mix hex.config mirror_url http://thing.local
```

## TODO
* [ ] Mirror hex installer
* [ ] Configuration instructions
