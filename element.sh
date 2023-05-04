#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ ! $1 ]]
then
  echo -e "Please provide an element as an argument."
else
  if [[ ! $1 =~ ^[0-9]+$ ]]
  then
    ELEMENT_RETURN=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE symbol = '$1' or name = '$1'")
  else  
    ELEMENT_RETURN=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE atomic_number = $1")
  fi  
  if [[ -z $ELEMENT_RETURN ]]
  then
    echo "I could not find that element in the database."
  else
      echo "$ELEMENT_RETURN" | while IFS="|" read ATOM_NUM SYM NAME
      do
        PROP_RETURN=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius, type_id FROM properties WHERE atomic_number = $ATOM_NUM")
        echo "$PROP_RETURN" | while IFS="|" read ATOM_MASS MELT BOIL TYPE_ID
        do
          TYPE=$($PSQL "SELECT type FROM types WHERE type_id = $TYPE_ID")
          echo -e "The element with atomic number $ATOM_NUM is $NAME ($SYM). It's a $TYPE, with a mass of $ATOM_MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
        done
      done
  fi
fi