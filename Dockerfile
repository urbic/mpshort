FROM opensuse/tumbleweed:latest

RUN zypper -n --gpg-auto-import-keys ar -p1 obs://M17N:fonts/openSUSE_Tumbleweed M17N:fonts
RUN zypper -n --gpg-auto-import-keys in -y --no-recommends \
	ant \
	ant-apache-resolver \
	git \
	google-alegreya{,-sans}-fonts \
	iosevka-fonts \
	poppler-tools \
	texlive-beamer \
	texlive-datetime2 \
	texlive-fontawesome-fonts \
	texlive-hologo \
	texlive-hyphen-russian \
	texlive-knuth-{lib,local} \
	texlive-latexmk \
	texlive-luamplib \
	texlive-metapost \
	texlive-mflogo{,-font} \
	texlive-microtype \
	texlive-piechartmp \
	texlive-polyglossia \
	texlive-xits

ENV HOME /mpshort
COPY . ${HOME}
WORKDIR ${HOME}
