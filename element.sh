#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
else
  NAME=$($PSQL "SELECT name FROM elements WHERE name ='$1'")
  SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE symbol ='$1'")
  if [[ $1 =~ ^-?[0-9]+$ ]]; then
    ATOMIC_NUM=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number =$1")
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number =$1")
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number =$1")
  elif [[ $NAME ]]; then
    ATOMIC_NUM=$($PSQL "SELECT atomic_number FROM elements WHERE name ='$1'")
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE name ='$1'")
  elif [[ $SYMBOL ]]; then
    ATOMIC_NUM=$($PSQL "SELECT atomic_number FROM elements WHERE symbol ='$1'")
    NAME=$($PSQL "SELECT name FROM elements WHERE symbol ='$1'")
  else
    echo -e "I could not find that element in the database."
    exit
  fi

  MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number =$ATOMIC_NUM")
  BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number =$ATOMIC_NUM")
  MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number =$ATOMIC_NUM")
  TYPE=$($PSQL "SELECT t.type FROM types t JOIN properties p ON t.type_id = p.type_id WHERE p.atomic_number =$ATOMIC_NUM")
  NAME=$(echo "$NAME" | xargs)
  SYMBOL=$(echo "$SYMBOL" | xargs)
  TYPE=$(echo "$TYPE" | xargs)
  MASS=$(echo "$MASS" | xargs)
  MELTING_POINT=$(echo "$MELTING_POINT" | xargs)
  BOILING_POINT=$(echo "$BOILING_POINT" | xargs)
  ATOMIC_NUM=$(echo "$ATOMIC_NUM" | xargs)
  echo "The element with atomic number $ATOMIC_NUM is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
fi