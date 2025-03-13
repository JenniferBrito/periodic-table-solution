#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
DROP_TYPES=$($PSQL "DROP TABLE types;")
CREATE_TYPES_TABLE=$($PSQL "CREATE TABLE types(type_id INT PRIMARY KEY, type VARCHAR(30) UNIQUE NOT NULL);")
echo "$CREATE_TYPES_TABLE"

INSERT_TYPE_VALUES=$($PSQL "INSERT INTO types(type) VALUES('metal'), ('nonmetal'), ('metalloid');")
echo "$INSERT_TYPE_VALUES"