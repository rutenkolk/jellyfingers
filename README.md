# Jellyfingers

Jellyfingers is a simple way to type [Jelly](https://github.com/DennisMitchell/jellylanguage) Code in your console without much fluff

## Quickstart

Install git and [dmenu](https://tools.suckless.org/dmenu/). These are the only prerequisites. You can find both on most linux package-managers.

* `git clone https://github.com/RutenkolkC/jellyfingers.git`
* `cd jellyfingers`
* `./init.sh`
* `./jellyfingers`
* ???
* profit

## What does this do, how does it work and why?
The init file simply clones the git wiki of the Jelly Programming language and builds a small dictionary file which is just given to dmenu over and over again by `jellyfingers`.

### Why?

Maybe you happen to use a keyboard layout that isn't really compatible with Jellys code page or you simply cannot remember the Character(s) that do something specific. The init script builds the initial dictionary out of the wiki of Jelly.

If you want more ways to find your favourite character or character combination you can always just make the dictionary bigger!

The "layout" of the dictionary file is very plain. The description and the symbols are simply seperated by 4 spaces.

These little scripts should work on all \*nix systems that have dmenu and git on their path.

## Usage specifics

`jellyfingers` querys you to type in a description of the symbol(s) you want to use. Since this is just dmenu you can also simply use the arrow keys in the list of options.

Your current Jelly string is being displayed as the dmenu prompt. This string is usually located in the top left corner (unless you customized your dmenu).

Press `Enter` to select the entry you want.
If you want to delete the last symbol(s) you entered, search for the entry labeled `BACK`.
If you are done, select the entry labeled `QUIT`. `jellyfingers` will output your string to stdout.

There is also an alternative version called `jellyfingers_alt` which cycles between a dmenu prompt to decide what to do next and the actual symbol-selection without the `BACK` and `QUIT` options.

If you just want a single jelly character(s), you can use `jellyfinger` instead of `jellyfingers`.
