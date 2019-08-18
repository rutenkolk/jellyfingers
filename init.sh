#!/bin/sh
rm -f dict
rm -f altdict
git clone https://github.com/DennisMitchell/jellylanguage.wiki.git wiki
echo "     Token seperator (space)" > dict
grep "|\s\`" wiki/Syntax.md | sed -E -e 's/^\| //g' | sed -E -e 's/^`+ ?(`|[^`]+)[`| ][^\|]*\| /\1    /g' | grep "^[^<]" >> dict
grep "\`|" wiki/Atoms.md | sed -E -e 's/`|` | `//g' | sed s/\|/"    "/g >> dict
grep "|\s\`" wiki/Quicks.md | sed -E -e 's/^\| //g' | sed -E -e 's/^`+ ?(`|[^`]+)[`| ][^\|]*\| /\1    /g' >> dict
echo "¶    Starts a new link (newline)" >> dict
cp dict altdict
cat altoptions >> altdict
rm -rf wiki
