#!/bin/bash
if curl -XPUT "elasticsearch:9200/prevail-logs"; then
    curl -XPUT "elasticsearch:9200/prevail-logs/_mapping" -H "Content-Type: application/json" -d@schema.json
fi
# if curl -H "Authorization: Basic ZWxhc3RpYzpwYXNzMTIzNA==" -XPUT "elasticsearch:9200/prevail-logs"; then
#     curl -H "Authorization: Basic ZWxhc3RpYzpwYXNzMTIzNA==" -XPUT "elasticsearch:9200/prevail-logs/_mapping" -H "Content-Type: application/json" -d@schema.json
# fi