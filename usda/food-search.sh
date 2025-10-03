#!/bin/sh

if [ -z $1 ]; then
    echo "Please provide a query"
    exit 1
fi

QUERY=$1

curl -X POST "https://api.nal.usda.gov/fdc/v1/foods/search?api_key=$USDA_FDC_API_KEY" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{\"query\":\"$QUERY\",\"pageSize\":25,\"pageNumber\":2,\"sortBy\":\"dataType.keyword\",\"sortOrder\":\"asc\"}"
