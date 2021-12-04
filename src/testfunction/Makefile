MODULES =testfunction

EXTENSION = testfunction
DATA = testfunction--1.0.sql
PGFILEDESC = "testfunction - example extension for postgresql"

REGRESS = testfunction

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
