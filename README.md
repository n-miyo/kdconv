kdconv
====================

DESCRIPTION
--------------------

kdconv is a program for converting a PDF document into a Kindle and/or
Sony Reader(PRS-350) friendly format.

Kindle2/3 and Sony Reader can display PDF documents, but, especially if
the documents holds data as image format, these devices are hard to
display it with good readability.

This program converts a PDF document into Kindle2/3 or Sony Reader
friendly paper size and improves readability.  In addition, this program
can eliminate extra margin from original document and transfer the file
into Kindle2/3 or Sony Reader automatically.

Usually these processes reduce file-size, so you can store more documents
into your device.


PLATFORM
--------------------
This program will run on:

* MacOS X 10.6 and later(earlier version is not tested)

Some users report me they can run it on Linux and/or FreeBSD.

This program supports these devices:

* Kindle2/3(KindleDX is not tested)
* Sony Reader PRS-350


PREPARATION
--------------------
This program depends on below programs.  Please install them into a
directory where in your PATH with using MacPorts so on.

* ghostscript(8.71 and layer)
* ImageMagick(6.6.1 and later)
* pdftk(1.12 and later.  Optional)

For example, if you'd like to install with MacPorts in default setting:

    $ sudo port install ghostscript ImageMagick pdftk

If you have not installed pdftk, you cannot embed an author name into
meta data, which is provided by -a option.

After finishing installing related programs, you should put kdconv into
a PATH search-able directory and set execute attribute.  For example, if
you'd like to install /opt/local/bin:

    $ sudo install kdconv /opt/local/bin

Or if you'd like to install it with manual page:

    $ sudo make install


USAGE
--------------------
Convert foo.pdf to bar.pdf for Kindle2/3:

    $ kdconv foo.pdf bar.pdf

See manual pages which is included this package for more details and/or
available options.


SPECIAL THANKS
--------------------
I appreciate follow people who contribute useful information and/or
patch for enhancing script.

Noriaki Mitsunaga-san, @toplut-san, cinq-san.

AUTHOR
--------------------
MIYOKAWA, Nobuyoshi

* E-Mail: n-miyo@tempus.org
* Twitter: nmiyo
* Blog: http://blogger.tempus.org/


COPYRIGHT
--------------------
Copyright (c) 2010-2011 MIYOKAWA, Nobuyoshi.  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS ''AS IS'' AND ANY EXPRESS
OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
