#!/bin/bash

echo -e "\n~~~~~ MY SALON ~~~~~"
PSQL="psql --username=freecodecamp --dbname=salon -t -A -F'|' -c"

MAIN_MENU() {
  echo -e "\nWelcome to My Salon, how can I help you?"
  echo "$($PSQL "SELECT * FROM services" )" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID" "$SERVICE_NAME" | sed "s/'|'/) /g"
  done
  read SERVICE_ID_SELECTED
  SERVICE_ID="$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED" )"
  SERVICE_NAME="$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED" | xargs)"
}

MAIN_MENU

#if input is not in the list of services
while [[ -z $SERVICE_ID ]]
do
  echo I could not find that service. What would you like today?
  MAIN_MENU
done  

#input phone number
echo -e "\nWhat's your phone number?" 
read CUSTOMER_PHONE
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

#if phone not in customer table
if [[ -z $CUSTOMER_NAME ]]
then
  echo -e "\nI don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME
  #insert customer phone and name
  $PSQL "INSERT INTO customers(phone,name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')"
fi  

CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

#input service time
echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
read SERVICE_TIME

#if service is not in appointment
APPOINTMENT_DATA=$($PSQL "SELECT c.customer_id,c.name,s.service_id,s.name,a.time FROM appointments a INNER JOIN customers c ON a.customer_id=c.customer_id INNER JOIN services s ON a.service_id=s.service_id WHERE a.customer_id=$CUSTOMER_ID AND a.service_id=$SERVICE_ID AND a.time='$SERVICE_TIME'" | xargs)
if [[ -z "$APPOINTMENT_DATA" ]]
then
  $PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID,'$SERVICE_TIME')"
else
  IFS="|" read -r CUSTOMER_ID CUSTOMER_NAME SERVICE_ID SERVICE_NAME SERVICE_TIME <<< "$APPOINTMENT_DATA"
fi  

echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."




