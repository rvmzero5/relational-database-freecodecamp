#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t -A -F'|' --no-align -c"

GET_DATA() {
  #checks if a number
  if [[ $1 =~ ^-?[0-9]+$ ]]; then
    OUTPUT_DATA="$($PSQL "SELECT p.atomic_number,e.name,e.symbol,t.type,p.atomic_mass,p.melting_point_celsius,p.boiling_point_celsius FROM properties p FULL JOIN elements e USING(atomic_number) FULL JOIN types t USING(type_id) WHERE p.atomic_number=$1;" | xargs )"  
  #checks if atomic symbol like 'He' (two letters)
  elif [[ $1 =~ ^[A-Za-z]{1,2}$ ]]; then
    OUTPUT_DATA="$($PSQL "SELECT p.atomic_number,e.name,e.symbol,t.type,p.atomic_mass,p.melting_point_celsius,p.boiling_point_celsius FROM properties p FULL JOIN elements e USING(atomic_number) FULL JOIN types t USING(type_id) WHERE e.symbol='$1';" | xargs )"
  #else if atomic name
  elif [[ $1 =~ ^[A-Za-z]{3,}$ ]]; then
    OUTPUT_DATA="$($PSQL "SELECT p.atomic_number,e.name,e.symbol,t.type,p.atomic_mass,p.melting_point_celsius,p.boiling_point_celsius FROM properties p FULL JOIN elements e USING(atomic_number) FULL JOIN types t USING(type_id) WHERE e.name='$1';" | xargs )" 
  fi
  #reads the variables
  IFS="|" read -r ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_POINT BOILING_POINT <<< "$OUTPUT_DATA"
}

#if no input
if [[ ! $1 ]];
  then
    echo Please provide an element as an argument.
  else
    GET_DATA "$1"
    #if not found
    if [[ -z $OUTPUT_DATA ]]; then
      echo I could not find that element in the database.
      else
      #if found
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. \
$NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    fi    
fi

