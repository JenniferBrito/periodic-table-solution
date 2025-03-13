#! /bin/bash
 
 PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
 
 FIX_WEIGHT=$($PSQL "ALTER TABLE properties RENAME COLUMN weight TO atomic_mass;")
 echo "$FIX_WEIGHT"
 FIX_MELTING_POINT=$($PSQL "ALTER TABLE properties RENAME COLUMN melting_point TO melting_point_celsius;")
 echo "$FIX_MELTING_POINT"
 FIX_BOILING_POINT=$($PSQL "ALTER TABLE properties RENAME COLUMN boiling_point TO boiling_point_celsius;")
 echo "$FIX_BOILING_POINT"