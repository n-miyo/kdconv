# Makefile for kdconv

PREFIX?=/opt/local
BINDIR=${PREFIX}/bin
MANDIR=${PREFIX}/share/man
JAMANDIR=${MANDIR}/ja

.SUFFIXES: .0 .1
install: install-bin install-man

install-bin:
	install -m 555 kdconv ${BINDIR}

install-man:
	install -m 444 kdconv.1 ${MANDIR}/man1

install-man-ja:
	install -m 444 kdconv-ja.1 ${JAMANDIR}/man1/kdconv.1

.1.0:
	@/usr/bin/tbl $< | \
	/usr/bin/groff -Wall -mtty-char -Tascii -mandoc -c | \
	col -b > $@

# EOF
