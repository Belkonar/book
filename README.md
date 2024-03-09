# The Book

I literally don't what to name this thing.

## Build Instructions

Right now it assumes you have a linux or Mac based environment. So if you're on windows use cygwin or wsl. The only current requirements are `pandoc` and a TeX implementation that works with it. I use a Mac so I used `basictex` which I got through homebrew. Example below for Mac. You'll need to restart your shell once both are installed.

```bash
brew install pandoc
brew install basictex
```

Once you've done that (or your operating systems equivilent), just run the build command.

```bash
./build.sh
```

It'll output the artifacts (currently a pdf and epub) into the `out` folder which the command creates.

Once I get all the initial topics I want to cover, I'll make an automated build process to generate these files and upload them to GitHub as versions.
