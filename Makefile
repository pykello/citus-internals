MODULE_big = citus_internals
OBJS = citus_internals.o

EXTENSION = citus_internals
DATA = citus_internals--0.1.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
USE_PGXS=1
include $(PGXS)
override CPPFLAGS := -I$(includedir) $(CPPFLAGS)
