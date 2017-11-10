/*-------------------------------------------------------------------------
 *
 *                foreign-data wrapper  java
 *
 * Copyright (c) 2013, PostgreSQL Global Development Group
 *
 * This software is released under the PostgreSQL Licence
 *
 * Author:  Andrew Dunstan <andrew@dunslane.net>
 *
 * IDENTIFICATION
 *                java_fdw/=sql/java_fdw.sql
 *
 *-------------------------------------------------------------------------
 */

CREATE FUNCTION java_fdw_handler()
RETURNS fdw_handler
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION java_fdw_validator(text[], oid)
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FOREIGN DATA WRAPPER java_fdw
  HANDLER java_fdw_handler
  VALIDATOR java_fdw_validator;
