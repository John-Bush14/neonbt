# neonbt

Neonbt is a plugin allowing you to read and write to .nbt, .dat or .dat_old files as if they where JSON.


## installation

First you have to install nbtlib with your favorit python package manager like
#### pipx
```bash
pipx install nbtlib
```

Then you can install it with your favorite neovim plugin manager like

#### lazy
``` lua
{
    "John-Bush14/neonbt",

    event = { "BufReadPre *.nbt", "BufReadPre *.dat", "BufReadPre *.dat_old" }
}
```

## FAQ

> I opened an nbt file but it didn't work?

If it's like this on every nbt file check if you have nbtlib installed and if you do, open an issue

Otherwise it's just nbtlib being goofy and you have to give up on reading the file
