#!/bin/bash
# download all zip codes from geonames and then make then lower case and remove non europe

# Declare an array of string with type
declare -a countrylist=("austria" "belgium" "bulgaria" "croatia" "cyprus" "czech_republic" "denmark" "estonia" "france" "germany" "greece" "hungary" "italy" "ireland" "latvia" "lithuania" "luxembourg" "malta" "netherlands" "poland" "portugal" "romania" "spain" "slovakia" "slovenia" "sweden")

declare -a countryisolist=("UA" "FR" "ES" "SE" "DE" "FI" "NO" "PL" "IT" "GB" "RO" "BY" "GR" "BG" "IS" "PT" "CZ" "DK" "HU" "RS" "AT" "IE" "LT" "LV" "HR" "BA" "SK" "EE" "NL" "CH" "MD" "BE" "AL" "MK" "SI" "ME" "CY" "LU" "FO" "AD" "MT" "LI" "GG" "SM" "GI" "MC" "VA")

mkdir tmp
# Iterate the string array using for loop
for country in ${countryisolist[@]}; do
   echo "processing $country"
   cp ${country}.zip tmp/${country,,}.zip
done
