EXTENSION = hunspell_xal
DATA = hunspell_xal--0.1.sql

DATA_TSEARCH = xal.affix xal.dict

# TODO: REGRESS = hunspell_xal

ifdef USE_PGXS
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
else
subdir = contrib/hunspell_xal
top_builddir = ../..
include $(top_builddir)/src/Makefile.global
include $(top_srcdir)/contrib/contrib-global.mk
endif