CREATE INDEX


ALTER TABLE `db_petrofai`.`provincia` ADD UNIQUE `hash_index` (`nombre`) USING HASH;

ALTER TABLE `db_petrofai`.`provincia` ADD UNIQUE `arbol_index` (`nombre`) USING BTREE;