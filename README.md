# suckless-tools

This repo contains my builds of dwm, dmenu and slock from suckless's lineup. They're here in case I distro-hop, or need a fallback after tinkering with my system build. Needless to say, this will be updated and/or forked if required.

The current build is centered around the hex-color #2e3440; CSS calls this DarkSlateGray. It seems to be comfortable for me to use, while not being as contrast-y as black-on-white. 

I will be adding a simple MakeFile to automate the build process, purely for convenience. However, each package has its own Makefile and can be individually built/installed using the 

``` bash 
sudo make (clean) install; 
```

in the respective folder. 

NOTE: clean is an optional tag. It's convenient for me and does nothing harmful, so I just throw it in there. 

The given Makefile will recursively install (cleanly) all the suckless tools in this directory. This is achieved by running 

``` bash 
make
```

in the suckless-tools directory. Similarly, 

``` bash 
make uninstall-all
```

uninstalls all tools. In case you wish to remove specific tools, say foo/ and bar/, pass them as space-separated arguments to the uninstall target as follows: 

``` bash 
make uninstall DIRS=foo bar
```

A great tutorial on using dwm is given at the official [suckless site](https://dwm.suckless.org/tutorial/). I do not claim ownership for any of this material (or most of the code for that matter); suckless.org is awesome and I love their work. 

*NOTE* I do have my own shortcuts in the _dwm-version/config.h_, like `Alt+Shift+b` for Chrome and so on. You might want to poke around there to change things if everything isn't working as intended.

### Status Bar 

This repo also contains _set-status.sh_, which is the script you need to add to your .xinitrc file before exec'ing dwm. The following is from my own .xinitrc, which should be enough to get you started. 

``` bash 
# FILE: ~/.xinitrc 
# Sets the DWM Status bar 
# NOTE: This has to be a daemon job 
# ( i.e. with `&` ). 
/path/to/suckless/suckless-tools/set-status.sh &

# Sets the background, using the 
# feh tool.
~/.fehbg &

# Starts DWM
exec dwm
```

By default, set-status updates the status every 30 seconds (I don't check it that often, sorry). You can change this by changing how long the sleep command executes in the script. It's also formatted to fit with my aesthetic, so feel free to modify your copy to your liking.  

### Troubleshooting

A common cause of the make not installing is not having enough permissions to install. While this may be bad advice, _sudo make_ generally does the trick. 



