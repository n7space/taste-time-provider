TEMPLATE = lib
CONFIG -= qt
CONFIG += generateC

DISTFILES +=  $(HOME)/tool-inst/share/taste-types/taste-types.asn
DISTFILES += TimeProvider.msc
DISTFILES += interfaceview.xml
DISTFILES += work/binaries/*.msc
DISTFILES += work/binaries/coverage/index.html
DISTFILES += work/binaries/filters
DISTFILES += work/system.asn

DISTFILES += TimeProvider.asn
DISTFILES += TimeProvider.acn
include(work/taste.pro)
message($$DISTFILES)

