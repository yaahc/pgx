-- This file is auto generated by pgx.
-- `extension_sql!()` defined SQL.


-- Enums derived via `#[derive(PostgresEnum)]`


-- Shell types for types defined by `#[derive(PostgresType)]`

-- src/derived.rs:8
-- operators::derived::Thing
-- operators::derived::Thing - TypeId { t: 12644167146395639576 }
-- Option<operators::derived::Thing> - TypeId { t: 14879984711990866738 }
-- Vec<operators::derived::Thing> - TypeId { t: 2838799325424039558 }
CREATE TYPE Thing;
-- src/lib.rs:10
-- operators::MyType
-- operators::MyType - TypeId { t: 13230852363921627462 }
-- Option<operators::MyType> - TypeId { t: 9674914027926278058 }
-- Vec<operators::MyType> - TypeId { t: 10440115655254719867 }
CREATE TYPE MyType;

-- Functions defined by `#[pg_extern]`

-- src/derived.rs:8
-- operators::derived::thing_out
CREATE OR REPLACE FUNCTION "thing_out"(
	"input" Thing /* operators::derived::Thing */
) RETURNS cstring /* &std::ffi::c_str::CStr */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_out';

-- src/derived.rs:8
-- operators::derived::thing_in
CREATE OR REPLACE FUNCTION "thing_in"(
	"input" cstring /* &std::ffi::c_str::CStr */
) RETURNS Thing /* operators::derived::Thing */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_in';

-- src/derived.rs:11
-- operators::derived::thing_ne
CREATE OR REPLACE FUNCTION "thing_ne"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS bool /* bool */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_ne';

-- src/derived.rs:11
-- operators::derived::thing_ne
CREATE OPERATOR < > (
	PROCEDURE="thing_ne",
	LEFTARG=Thing, /* operators::derived::Thing */
	RIGHTARG=Thing, /* operators::derived::Thing */
	NEGATOR = =,
	RESTRICT = neqsel,
	JOIN = neqjoinsel
);
                                    
-- src/derived.rs:11
-- operators::derived::thing_eq
CREATE OR REPLACE FUNCTION "thing_eq"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS bool /* bool */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_eq';

-- src/derived.rs:11
-- operators::derived::thing_eq
CREATE OPERATOR = (
	PROCEDURE="thing_eq",
	LEFTARG=Thing, /* operators::derived::Thing */
	RIGHTARG=Thing, /* operators::derived::Thing */
	NEGATOR = < >,
	RESTRICT = eqsel,
	JOIN = eqjoinsel,
	HASHES,
	MERGES
);
                                    
-- src/derived.rs:16
-- operators::derived::thing_cmp
CREATE OR REPLACE FUNCTION "thing_cmp"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS integer /* i32 */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_cmp';

-- src/derived.rs:16
-- operators::derived::thing_ge
CREATE OR REPLACE FUNCTION "thing_ge"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS bool /* bool */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_ge';

-- src/derived.rs:16
-- operators::derived::thing_ge
CREATE OPERATOR >= (
	PROCEDURE="thing_ge",
	LEFTARG=Thing, /* operators::derived::Thing */
	RIGHTARG=Thing, /* operators::derived::Thing */
	COMMUTATOR = <=,
	NEGATOR = <,
	RESTRICT = scalargesel,
	JOIN = scalargejoinsel
);
                                    
-- src/derived.rs:16
-- operators::derived::thing_le
CREATE OR REPLACE FUNCTION "thing_le"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS bool /* bool */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_le';

-- src/derived.rs:16
-- operators::derived::thing_le
CREATE OPERATOR <= (
	PROCEDURE="thing_le",
	LEFTARG=Thing, /* operators::derived::Thing */
	RIGHTARG=Thing, /* operators::derived::Thing */
	COMMUTATOR = >=,
	NEGATOR = >,
	RESTRICT = scalarlesel,
	JOIN = scalarlejoinsel
);
                                    
-- src/derived.rs:16
-- operators::derived::thing_gt
CREATE OR REPLACE FUNCTION "thing_gt"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS bool /* bool */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_gt';

-- src/derived.rs:16
-- operators::derived::thing_gt
CREATE OPERATOR > (
	PROCEDURE="thing_gt",
	LEFTARG=Thing, /* operators::derived::Thing */
	RIGHTARG=Thing, /* operators::derived::Thing */
	COMMUTATOR = <,
	NEGATOR = <=,
	RESTRICT = scalargtsel,
	JOIN = scalargtjoinsel
);
                                    
-- src/derived.rs:16
-- operators::derived::thing_lt
CREATE OR REPLACE FUNCTION "thing_lt"(
	"left" Thing ,/* operators::derived::Thing */
	"right" Thing /* operators::derived::Thing */
) RETURNS bool /* bool */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_lt';

-- src/derived.rs:16
-- operators::derived::thing_lt
CREATE OPERATOR < (
	PROCEDURE="thing_lt",
	LEFTARG=Thing, /* operators::derived::Thing */
	RIGHTARG=Thing, /* operators::derived::Thing */
	COMMUTATOR = >,
	NEGATOR = >=,
	RESTRICT = scalarltsel,
	JOIN = scalarltjoinsel
);
                                    
-- src/derived.rs:20
-- operators::derived::thing_hash
CREATE OR REPLACE FUNCTION "thing_hash"(
	"value" Thing /* operators::derived::Thing */
) RETURNS integer /* i32 */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'thing_hash';

-- src/lib.rs:15
-- operators::my_eq
CREATE OR REPLACE FUNCTION "my_eq"(
	"left" MyType ,/* operators::MyType */
	"right" MyType /* operators::MyType */
) RETURNS bool /* bool */
STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'my_eq';

-- src/lib.rs:15
-- operators::my_eq
CREATE OPERATOR = (
	PROCEDURE="my_eq",
	LEFTARG=MyType, /* operators::MyType */
	RIGHTARG=MyType, /* operators::MyType */

);
                                    
-- src/lib.rs:10
-- operators::mytype_out
CREATE OR REPLACE FUNCTION "mytype_out"(
	"input" MyType /* operators::MyType */
) RETURNS cstring /* &std::ffi::c_str::CStr */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'mytype_out';

-- src/lib.rs:10
-- operators::mytype_in
CREATE OR REPLACE FUNCTION "mytype_in"(
	"input" cstring /* &std::ffi::c_str::CStr */
) RETURNS MyType /* operators::MyType */
IMMUTABLE PARALLEL SAFE STRICT
LANGUAGE c /* Rust */
AS 'MODULE_PATHNAME', 'mytype_in';


-- Types defined by `#[derive(PostgresType)]`

-- src/derived.rs:8
-- operators::derived::Thing - TypeId { t: 12644167146395639576 }
-- Option<operators::derived::Thing> - TypeId { t: 14879984711990866738 }
-- Vec<operators::derived::Thing> - TypeId { t: 2838799325424039558 }
CREATE TYPE Thing (
	INTERNALLENGTH = variable,
	INPUT = thing_in,
	OUTPUT = thing_out,
	STORAGE = extended
);
                            
-- src/lib.rs:10
-- operators::MyType - TypeId { t: 13230852363921627462 }
-- Option<operators::MyType> - TypeId { t: 9674914027926278058 }
-- Vec<operators::MyType> - TypeId { t: 10440115655254719867 }
CREATE TYPE MyType (
	INTERNALLENGTH = variable,
	INPUT = mytype_in,
	OUTPUT = mytype_out,
	STORAGE = extended
);
                            

-- Operator classes defined by `#[derive(PostgresHash, PostgresOrd)]`

-- src/derived.rs:20
-- operators::derived::Thing
-- TypeId { t: 12644167146395639576 }
CREATE OPERATOR FAMILY Thing_hash_ops USING hash;
CREATE OPERATOR CLASS Thing_hash_ops DEFAULT FOR TYPE Thing USING hash FAMILY Thing_hash_ops AS
	OPERATOR    1   =  (Thing, Thing),
	FUNCTION    1   Thing_hash(Thing);
-- src/derived.rs:16
-- operators::derived::Thing
-- TypeId { t: 12644167146395639576 }
CREATE OPERATOR FAMILY Thing_btree_ops USING btree;
CREATE OPERATOR CLASS Thing_btree_ops DEFAULT FOR TYPE Thing USING btree FAMILY Thing_btree_ops AS
	OPERATOR 1 < ,
	OPERATOR 2 <= ,
	OPERATOR 3 = ,
	OPERATOR 4 >= ,
	OPERATOR 5 > ,
	FUNCTION 1 Thing_cmp(Thing, Thing);

