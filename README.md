# public files of the http://b-star-y.tech website

See the website http://b-star-y.tech/ and these files on https://github.com/bstarynk/b-star-y-tech-web

## licenses

Unless otherwise written, The code is under GPLv3+ license and public data
(e.g. HTML or JPEG or SVG files) is under CC BY SA 4 license.

Some SVG files are from https://en.wikipedia.org/

The GPLv3 license is on https://www.gnu.org/licenses/gpl-3.0.en.html 

The CCBYSA4 license is on https://creativecommons.org/licenses/by-sa/4.0/

## copyright owner

The copyright owner is by default

 *  [Basile Starynkevitch](http://starynkevitch.net/Basile/), email:   <basile-freelance@staynkevitch.net>
 *  8 rue de la Faïencerie,
   92340 [Bourg La Reine](https://en.wikipedia.org/wiki/Bourg-la-Reine),
   [France](http://en.wikipedia.org/wiki/France)
   
   mobile phone: +33 6 8501 2359; 
   personal web page: http://starynkevitch.net/Basile

## opinions

Opinions here are only mine

Les opinions exprimées ici ne sont que les miennes


## dependencies

We use [FastCGI](https://en.wikipedia.org/wiki/FastCGI) techniques in
C++ for [lighttpd](https://www.lighttpd.net/). So we depend upon
[libfastcgi++](https://fastcgipp.isatec.ca/) -LGPLv3 licensed- and
[SQlite++](https://github.com/SRombauts/SQLiteCpp) -MIT licensed- and
[UTF-CPP](https://github.com/ww898/utf-cpp) -MIT licensed- and of
course [GCC 9](https://gcc.gnu.org/gcc-9/) with [ccache](https://ccache.dev/).
We use [GNU make](https://www.gnu.org/software/make/) or [remake](http://bashdb.sourceforge.net/remake/).


## installation

Of course, **install all the dependencies listed above** (we assume
they are available in `/usr/local/` or `/usr/` prefix, as understood
by [cmake](http://cmake.org/) or [GNU
autotools](https://en.wikipedia.org/wiki/GNU_Autotools) etc...)

Then read, understand, edit and **adapt the `./install-web.sh` shell script and then run it**.

#### Copyright © 2020 [Basile Starynkevitch](http://starynkevitch.net/Basile/index_en.html) (France)
