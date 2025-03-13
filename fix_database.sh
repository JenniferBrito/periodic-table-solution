# #! /bin/bash
 
#  PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
 
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

# DELETE_FROM_PROPERTIES=$($PSQL "DELETE FROM properties WHERE atomic_number=1000;")
# echo "$DELETE_FROM_PROPERTIES"

# DELETE_FROM_ELEMENT=$($PSQL "DELETE FROM elements WHERE atomic_number=1000;")
# echo "$DELETE_FROM_ELEMENT"

# CAPTILIZE_SYMBOL=$($PSQL "UPDATE elements SET symbol=initcap(symbol);")
# echo "$CAPTILIZE_SYMBOL"

# ALTER_TYPE_AM=$($PSQL "ALTER TABLE properties ALTER COLUMN atomic_mass TYPE DECIMAL;")
# echo "$ALTER_TYPE_AM"

# REMOVE_TRAILING_ZEROS=$($PSQL "UPDATE properties SET atomic_mass=TRIM(TRAILING '0' FROM CAST(atomic_mass AS TEXT))::DECIMAL;")
# echo "$REMOVE_TRAILING_ZEROS"

# ADD_FK_ELEMENTS=$($PSQL "ALTER TABLE properties ADD FOREIGN KEY (atomic_number) REFERENCES elements(atomic_number);")
# echo "$ADD_FK_ELEMENTS"

ADD_FK_PROPERTIES=$($PSQL "ALTER TABLE properties ADD FOREIGN KEY (type_id) REFERENCES types(type_id);")
echo "$ADD_FK_PROPERTIES"