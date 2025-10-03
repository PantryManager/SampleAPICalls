#!/bin/sh

curl -X GET "https://api.nal.usda.gov/fdc/v1/food/167782?api_key=$USDA_FDC_API_KEY" -H  "accept: application/json"
