# suckless-tools

This repo contains my builds of dwm, dmenu and slock from suckless's lineup. They're here in case I distro-hop, or need a fallback after tinkering with my system build. Needless to say, this will be updated and/or forked if required.

The current build is centered around the hex-color #2e3440; CSS calls this DarkSlateGray. It seems to be comfortable for me to use, while not being as contrast-y as black-on-white. 

I will be adding a simple MakeFile to automate the build process, purely for convenience. However, each package has its own Makefile and can be individually built/installed using the 

``` bash 
sudo make (clean) install; 
```

in the respective folder. 

NOTE: clean is an optional tag. It's convenient for me and does nothing harmful, so I just throw it in there. 



