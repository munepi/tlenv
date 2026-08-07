release_version := $(shell GIT_CEILING_DIRECTORIES=$(PWD) bin/tlenv --version | cut -d' ' -f2)

share/man/man1/tlenv.1: share/man/man1/tlenv.1.adoc
	asciidoctor -b manpage -a version=$(release_version:v%=%) $<
