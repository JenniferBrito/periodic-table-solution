#! /bin/bash
 
 PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
 
#  FIX_WEIGHT=$($PSQL "ALTER TABLE properties RENAME COLUMN weight TO atomic_mass;")
#  echo "$FIX_WEIGHT"
#  FIX_MELTING_POINT=$($PSQL "ALTER TABLE properties RENAME COLUMN melting_point TO melting_point_celsius;")
#  echo "$FIX_MELTING_POINT"
#  FIX_BOILING_POINT=$($PSQL "ALTER TABLE properties RENAME COLUMN boiling_point TO boiling_point_celsius;")
#  echo "$FIX_BOILING_POINT"

# ADD_NOT_NULL_MPC=$($PSQL "ALTER TABLE properties ALTER COLUMN melting_point_celsius SET NOT NULL;")
#  echo "$ADD_NOT_NULL_MPC"
#  ADD_NOT_NULL_BPC=$($PSQL "ALTER TABLE properties ALTER COLUMN boiling_point_celsius SET NOT NULL;")
#  echo "$ADD_NOT_NULL_BPC"
 
#  FIX_NAME=$($PSQL "ALTER TABLE elements ALTER COLUMN name SET NOT NULL;")
#  echo "$FIX_NAME"
#  UNIQUE_NAME=$($PSQL "ALTER TABLE elements ADD CONSTRAINT name UNIQUE(name);")
#  echo "$UNIQUE_NAME"
#  FIX_SYMBOL=$($PSQL "ALTER TABLE elements ALTER COLUMN symbol SET NOT NULL;")
#  echo "$FIX_SYMBOL"
#  UNIQUE_SYMBOL=$($PSQL "ALTER TABLE elements ADD CONSTRAINT symbol UNIQUE(symbol);")
#  echo "$UNIQUE_SYMBOL"

DELETE_FROM_PROPERTIES=$($PSQL "DELETE FROM properties WHERE atomic_number=1000;")
echo "$DELETE_FROM_PROPERTIES"

DELETE_FROM_ELEMENT=$($PSQL "DELETE FROM elements WHERE atomic_number=1000;")
echo "$DELETE_FROM_ELEMENT"