# KallistiOS Ogg/Vorbis Decoder Library
#
# Library Makefile
# (c)2001 Thorsten Titze
# Based on KOS Makefiles by Megan Potter

TARGET = liboggvorbisplay.a
OBJS =
SUBDIRS = liboggvorbis liboggvorbisplay

all: create_kos_link subdirs copylibs

# Copy libs from target oggvorbis and oggvorbisplay to root
copylibs:
	cp ./liboggvorbisplay/lib/liboggvorbisplay.a $(KOS_BASE)/addons/lib/$(KOS_ARCH)/

# creates the kos link to the headers
create_kos_link:
	rm -f $(KOS_BASE)/addons/include/oggvorbis
	ln -s $(CURDIR)/include/oggvorbis/ $(KOS_BASE)/addons/include/oggvorbis
	rm -f $(KOS_BASE)/addons/include/ogg
	ln -s $(CURDIR)/include/ogg/ $(KOS_BASE)/addons/include/ogg

include $(KOS_BASE)/addons/Makefile.prefab
