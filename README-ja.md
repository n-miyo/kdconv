kdconv
====================


DESCRIPTION
--------------------
kdconv は PDF を Kindle2/3、Sony Reader(PRS-350)で読みやすいサイズへ変換
する為のプログラムです。

Kindle2/3、Sony Reader では PDF を表示出来ますが、特にデータが画像として
埋め込まれたファイルの場合、サイズによっては綺麗に表示されないことがあり
ます。

このプログラムは、指定された PDF を Kindle2/3、Sony Reader に適したサイズ
へ変換し、視認性を高めた後、出力します。また、余白を取り除く機能や自動的
に Kindle2/3、Sony Reader へ転送したりすることも可能です。

出力されたファイルのサイズはオリジナルファイルよりも小さくなることから、
単一デバイスへ複数のファイルを格納する際にも便利です。


PLATFORM
--------------------
サポートしているOSは以下の通りです。

* MacOS X 10.6以上(それ以前は未検証)

また Linux や FreeBSD での動作報告もいただいています。

サポートしているデバイスは以下の通りです。

* Kindle2/3(KindledDX は未検証)
* Sony Reader PRS-350


PREPARATION
--------------------
このプログラムは、以下の外部プログラムへ依存しています。MacPorts などを用
いて path の通っているディレクトリへインストールしてください。

* ghostscript(8.71以上)
* ImageMagick(6.6.1以上)
* pdftk(1.12以上。ただしインストールはオプション)

例えば MacPorts で default のままインストールするには:

    $ sudo port install ghostscript ImageMagick pdftk

pdftk がインストールされていない場合、-a オプションによる作者名のメタデー
タ埋め込み機能が動作しません。

外部プログラムのインストールが済んだら kdconv をパスの通った適当なディレ
クトリへ install し、実行属性を設定します。例えば /opt/local/bin へインス
トールするには:

    $ sudo install kdconv /opt/local/bin

または、マニュアルページも合わせてインストールするには:

    $ sudo make install


USAGE
--------------------
foo.pdf を Kindle2/3 用に変換し bar.pdf として出力するには:

    $ kdconv foo.pdf bar.pdf

オプション指定など、その他細かな使い方は、同梱のマニュアルページを参照してください。


SPECIAL THANKS
--------------------
以下の方々から有益なご指摘やパッチを頂き、より使いやすいスクリプトにする
ことが出来ました。感謝いたします。

Noriaki Mitsunaga さん、@toplut さん、cinq さん。


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
