#/bin/sh

curl -X GET "https://api.nal.usda.gov/fdc/v1/foods/list?dataType=Foundation,SR%20Legacy&pageSize=1&api_key=$USDA_FDC_API_KEY" -H  "accept: application/json" | jq
