#!/bin/bash
# download all zip codes from geonames and then make then lower case and remove non europe

# Declare an array of string with type
declare -a countryisolist=("BE" "BG" "CZ" "DK" "DE" "EE" "IE" "GR" "ES" "FR" "HR" "IT" "CY" "LV" "LT" "LU" "HU" "MT" "NL" "AT" "PL" "PT" "RO" "SI" "SK" "FI" "SE" "NO" "GB")

# Iterate the string array using for loop
for country in ${countryisolist[@]}; do
   if [ -f "${country,,}.zip" ]; then
       echo "${country,,}.zip exist"
   else 
       echo "${country,,}.zip does not exist"
   fi
done
