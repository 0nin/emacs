#!/bin/bash

rm -rf ~/.emacs.d
rm ~/.emacs

mkdir ~/.emacs.d

cp -R custom ~/.emacs.d
cp init.el ~/.emacs.d

cd ~/.emacs.d/

git clone https://code.google.com/p/ergoemacs/ ~/source/ergoemacs
cd ~/source/ergoemacs
cp -R ./ergoemacs ~/.emacs.d/

#emacs
