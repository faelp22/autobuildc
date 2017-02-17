#!/bin/bash
touch NEWS README AUTHORS ChangeLog
cat README.md > README
echo "Isael Sousa <faelp22@gmail.com>" > AUTHORS
aclocal
autoconf
automake -a
./configure
make dist-gzip
make dist-bzip2
make 
